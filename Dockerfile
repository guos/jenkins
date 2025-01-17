FROM jenkins/jenkins:2.479.3-jdk17
USER root
RUN apt-get update && apt-get install -y git-lfs 
# drop back to the regular jenkins user - good practice
USER jenkins
RUN jenkins-plugin-cli --plugins kubernetes workflow-aggregator git configuration-as-code pipeline-utility-steps cucumber-testresult-plugin:0.10.1 role-strategy:743.v142ea_b_d5f1d3 ldap:770.vb_455e934581a_ config-file-provider:980.v88956a_a_5d6a_d blueocean:1.27.16 http_request:1.19
