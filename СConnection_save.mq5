bool СConnection::Save(const int file_handle)
  {
   if(file_handle==INVALID_HANDLE)
      return false;
//---
   if(FileWriteDouble(file_handle,weight)<=0)
      return false;
   if(FileWriteDouble(file_handle,deltaWeight)<=0)
      return false;
//---
   return true;
  }
