# Rclone job templates
  
## Instructions  
  
1. Create a generic job set the type to rclone  
2. Paste in one of the configs substituting with custom connection information.  

## Files  

- [box.hjson](box.hjson) - copy from mitto to box
- [dropbox.hjson](dropbox.hjson)) - copy from mitto to dropbox  
- [gcs.hjson](gcs.hjson) - copy from google cloud storage to mitto
- [onedrive.hjson](onedrive.hjson) - copy from onedrive to mitto  
- [s3.hjson](s3.hjson) - copy from mitto to s3 using programmatic access id/key  
- [sftp_with_ssh_key.hjson](sftp_with_ssh_key.hjson) - copy from sftp to mitto using ssh key. [REQUIRES MITTO SETUP](https://www.zuar.com/blog/mitto-and-rclone-custom-jobs/#sftp)  
- [webdav_egnyte.hjson](webdav_egnyte.hjson) - copy from egnyte to mitto  
- [webdav_sharepoint.hjson](webdav_sharepoint.hjson) - copy from sharepoint to mitto  
  
## Mitto Documentation  
  
- [Zuar blog discussing usage of these examples](https://www.zuar.com/blog/mitto-and-rclone-custom-jobs/)
- [Mitto Rclone Help Documentation](https://www.zuar.com/help/mitto/rclone/)  
- [Mitto Rclone API Documentation](https://www.zuar.com/api/mitto/plugin/rclone/)
  
