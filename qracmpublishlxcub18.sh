cd /opt/QRACM
dotnet Qracm.Api.dll --urls http://+80
cp Qracm.service /lib/systemd/system/
systemctl enable Qracm.service
systemctl start Qracm.service
