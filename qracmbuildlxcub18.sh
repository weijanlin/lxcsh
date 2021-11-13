cd /var/lib/jenkins/pubisher/lxc/ub18
if test ! -d QRACM ;then mkdir -p QRACM;fi;rm -rf QRACM;mkdir -p QRACM 
chmod 733 /var/lib/jenkins/pubisher/lxc/ub18/QRACM
cd /var/lib/jenkins/build
if test ! -d QRACM ;then mkdir -p QRACM;fi;rm -rf QRACM;mkdir -p QRACM 
cd QRACM
git clone git@gitlab.com:maxaiot/QRACM/api.git
cd api
git checkout staging
dotnet publish -c Release 'Presentation/Qracm.Api/Qracm.Api.csproj' -o  '/var/lib/jenkins/pubisher/lxc/ub18/QRACM'  
rm appsettings.Production.json
cp appsettings.Staging.json appsettings.Production.json
cd /var/lib/jenkins/pubisher/lxc/ub18/
