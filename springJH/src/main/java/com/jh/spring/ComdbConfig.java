package com.jh.spring;

import javax.persistence.EntityManagerFactory;

import org.apache.tomcat.jdbc.pool.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.autoconfigure.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.boot.autoconfigure.orm.jpa.JpaProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.persistenceunit.PersistenceUnitManager;
import org.springframework.orm.jpa.vendor.AbstractJpaVendorAdapter;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;

@Configuration
@EnableJpaRepositories(
	    entityManagerFactoryRef = "orderEntityManager",
	    transactionManagerRef = "orderTransactionManager",
	    basePackages = {"com.jh.spring.domain.comdb"})
public class ComdbConfig {

	@Autowired(required = false)
	private PersistenceUnitManager persistenceUnitManager;

	@Bean
	@ConfigurationProperties("app.order.jpa")
	public JpaProperties orderJpaProperties() {
		return new JpaProperties();
	}

	@Bean
	@ConfigurationProperties(prefix = "comdb.datasource")
	public DataSource orderDataSource() {
		return (DataSource) DataSourceBuilder.create().type(DataSource.class).build();
	}

	@Bean
	public LocalContainerEntityManagerFactoryBean orderEntityManager(
			JpaProperties orderJpaProperties) {
		EntityManagerFactoryBuilder builder = createEntityManagerFactoryBuilder(orderJpaProperties);
		return builder
				.dataSource(orderDataSource())
				.packages("com.jh.spring.domain.comdb")
				.persistenceUnit("orders")
				.build();
	}

	@Bean
	public JpaTransactionManager orderTransactionManager(EntityManagerFactory orderEntityManager) {
		return new JpaTransactionManager(orderEntityManager);
	}

	private EntityManagerFactoryBuilder createEntityManagerFactoryBuilder(JpaProperties customerJpaProperties) {
		JpaVendorAdapter jpaVendorAdapter = createJpaVendorAdapter(customerJpaProperties);
		return new EntityManagerFactoryBuilder(
				jpaVendorAdapter, customerJpaProperties, this.persistenceUnitManager);
	}

	private JpaVendorAdapter createJpaVendorAdapter(JpaProperties jpaProperties) {
		AbstractJpaVendorAdapter adapter = new HibernateJpaVendorAdapter();
		adapter.setShowSql(jpaProperties.isShowSql());
		adapter.setDatabase(jpaProperties.getDatabase());
		adapter.setDatabasePlatform(jpaProperties.getDatabasePlatform());
		adapter.setGenerateDdl(jpaProperties.isGenerateDdl());
		return adapter;
	}
	
}
