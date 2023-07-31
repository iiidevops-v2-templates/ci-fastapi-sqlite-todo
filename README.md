## FastAPI todo sqlite example

## 修改程式碼注意事項
1. 修改Python版本  
如想要更換版本請至`Dockefile`修改為自己想要的版本

2. 部署環境額外環境變數
若開發需求上可能有針對專案需要的特別環境變數，除透過修改`Dockerfile`的形式去加入
```dockerfile
ENV 環境變數名稱1 值1
ENV 環境變數名稱2 值2
ENV 環境變數名稱3 值3
```
也可以至 iiidevops 目錄內修改 app.env 進行設定，如果是針對特定分支需要的環境變數，請建立 app.env.{分支名稱} Exp. app.env.develop

## iiidevops
* 專案內`.rancher-pipeline.yml`如要手動調整, 必須至 default branch 內進行更動, 並確保每個分支都能一致(可透過 III DevOps 網頁 Pipeline 設定進行存檔即可將 default branche 內的 .rancher-pipeline.yml 同步至所有分支)
* 目前 FastAPI 服務設定 port:`8000`，如果要修改請同時更改 `Dockerfile` 與 .rancher-pipeline.yml 內的設定。
* `iiidevops`資料夾說明
  * `pipeline_settings.json`是提供給 III DevOps 辨識範本來源資訊請不要更動或刪除
  * `app.blacklist` 是 SonarQube 與 CheckMarx 黑白名單設定檔，可以設定掃描 repo 內哪些目錄或檔案
  * `app.env` 是設定環境變數定義檔，如需對特定分支設定環境變數，請建立 app.env.{分支名稱} Exp. app.env.develop
  * `sonarqube`資料夾內 `SonarScan` 是 SonarQube Runner 執行的程式，專案如有客制需要可進行修改調整
  * `postman`資料夾內可將您的Postman 的 collection 匯出存放於此，devops系統會以`postman`資料夾內檔案做自動測試
  * `sideex` 資料夾內可將您的SideeX 或是 Rapi 錄製的腳本匯出 json 格式存放於此，devops系統會以`sideex`資料夾內檔案做自動測試


## 範例教學來源
https://youtu.be/3vfum74ggHE?t=307

## reference
https://github.com/patrickloeber/python-fun/tree/master/webapps/fastapi

