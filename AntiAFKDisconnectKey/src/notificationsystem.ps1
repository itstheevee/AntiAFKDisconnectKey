$logo = "$PSScriptRoot\icon.ico"
$headlineText = 'AntiAFKDisconnectKey'
$bodyText = "You're about to disconnect from AFKing in Roblox!"
$image = ''
$xml = @"

<toast launch="action=viewDownload&amp;downloadId=9438108">
  
  <visual>
    <binding template="ToastGeneric">
            <text>$($headlineText)</text>
            <text>$($bodyText)</text>
            <image placement="appLogoOverride" src="$($logo)"/>
            <image src="$($image)"/>
      <progress
        title="{progressTitle}"
        value="{progressValue}"
        valueStringOverride="{progressValueString}"
        status="{progressStatus}"/>
    </binding>
  </visual>

   <audio silent="true"/>
  
</toast>
"@
$XmlDocument = [Windows.Data.Xml.Dom.XmlDocument, Windows.Data.Xml.Dom.XmlDocument, ContentType = WindowsRuntime]::New()
$XmlDocument.loadXml($xml)
$ToastNotification = [Windows.UI.Notifications.ToastNotification, Windows.UI.Notifications, ContentType = WindowsRuntime]::New($XmlDocument)
$ToastNotification.Tag = 'my_tag'
$Dictionary = [System.Collections.Generic.Dictionary[String, String]]::New()
$Dictionary.Add('progressTitle', 'AntiAFKDisconnectKey')
$Dictionary.Add('progressValue', '0')
$Dictionary.Add('progressValueString', '0/180 seconds left')
$Dictionary.Add('progressStatus', ' ')
$ToastNotification.Data = [Windows.UI.Notifications.NotificationData]::New($Dictionary)
$ToastNotification.Data.SequenceNumber = 1
$AppId = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}\WindowsPowerShell\v1.0\powershell.exe'
[Windows.UI.Notifications.ToastNotificationManager, Windows.UI.Notifications, ContentType = WindowsRuntime]::CreateToastNotifier($AppId).Show($ToastNotification)


for ($index = 1; $index -le 180; $index++) {
  Start-Sleep 1
  $Dictionary = [System.Collections.Generic.Dictionary[String, String]]::New()
  $Dictionary.Add('progressValue', $index / 180)
  $Dictionary.Add('progressValueString', "$index/180 seconds left")
  $NotificationData = [Windows.UI.Notifications.NotificationData]::New($Dictionary)
  $NotificationData.SequenceNumber = 2
  [Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($AppId).Update($NotificationData, 'my_tag')
}

$Dictionary = [System.Collections.Generic.Dictionary[String, String]]::New()
$Dictionary.Add('progressStatus', ' ')
$NotificationData = [Windows.UI.Notifications.NotificationData]::New($Dictionary)
$NotificationData.SequenceNumber = 2
[Windows.UI.Notifications.ToastNotificationManager]::CreateToastNotifier($AppId).Update($NotificationData, 'my_tag')
exit