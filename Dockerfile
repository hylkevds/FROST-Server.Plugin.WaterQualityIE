FROM fraunhoferiosb/frost-server-http:2.2.0

COPY data ${CATALINA_HOME}/webapps/FROST-Server/WEB-INF/data

ENV plugins_coreModel_enable=true
ENV plugins_actuation_enable=false
ENV plugins_multiDatastream_enable=false
ENV plugins_openApi_enable=true
ENV plugins_odata_enable=true
ENV plugins_modelLoader_enable=true
ENV plugins_modelLoader_modelPath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/model'
ENV plugins_modelLoader_modelFiles='Datastream.json, Deployment.json, FeatureType.json, ObservationProcedure.json, PreparationProcedure.json, PreparationStep.json, Relatedfeature.json, Sampler.json, Sampling.json, SamplingProcedure.json'
ENV plugins_modelLoader_securityPath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/security'
ENV plugins_modelLoader_securityFiles=''
ENV plugins_modelLoader_liquibasePath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/liquibase'
ENV plugins_modelLoader_liquibaseFiles='waterQuality.xml'
ENV plugins_modelLoader_idType_Role=STRING
ENV plugins_modelLoader_idType_User=STRING
ENV persistence_idGenerationMode_Role=ClientGeneratedOnly
ENV persistence_idGenerationMode_User=ClientGeneratedOnly

USER tomcat