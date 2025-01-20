FROM jenkins/jenkins:2.479.3-jdk17
USER root
RUN apt-get update && apt-get install -y git-lfs 
# drop back to the regular jenkins user - good practice
USER jenkins
RUN jenkins-plugin-cli --plugins kubernetes workflow-aggregator generic-webhook-trigger:2.2.5 gitlab-api:5.6.0-97.v6603a_83f8690 gitlab-plugin:1.9.6 gitlab-oauth: 1.20 gitlab-branch-source:715.v4c830b_ca_ ef95 gitlab-logo:142.v161520611933 git configuration-as-code pipeline-utility-steps cucumber-testresult-plugin:0.10.1 role-strategy:743.v142ea_b_d5f1d3 ldap:770.vb_455e934581a_ config-file-provider:980.v88956a_a_5d6a_d blueocean:1.27.16 http_request:1.19
