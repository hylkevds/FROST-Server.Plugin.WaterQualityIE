FROM fraunhoferiosb/frost-server-http:2.4

COPY data ${CATALINA_HOME}/webapps/FROST-Server/WEB-INF/data
COPY index.html ${CATALINA_HOME}/webapps/FROST-Server/

ENV plugins_coreModel_enable=true
ENV plugins_actuation_enable=false
ENV plugins_multiDatastream_enable=false
ENV plugins_openApi_enable=true
ENV plugins_odata_enable=true
ENV plugins_modelLoader_enable=true
ENV plugins_modelLoader_modelPath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/model'
ENV plugins_modelLoader_modelFiles='Datastream.json, Deployment.json, FeatureType.json, ObservingProcedure.json, PreparationProcedure.json, PreparationStep.json, RelatedDatastream.json, RelatedFeature.json, RelatedObservation.json, RelatedThing.json, RelationRole.json, Sampler.json, Sampling.json, SamplingProcedure.json'
ENV plugins_modelLoader_securityPath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/security'
ENV plugins_modelLoader_securityFiles=''
ENV plugins_modelLoader_liquibasePath='/usr/local/tomcat/webapps/FROST-Server/WEB-INF/data/liquibase'
ENV plugins_modelLoader_liquibaseFiles='waterQuality.xml, relations.xml'

USER tomcat
