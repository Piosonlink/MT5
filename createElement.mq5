bool CArrayCon::CreateElement(const int index)
  {
   if(index<0)
      return false;
//---
   if(m_data_max<index+1)
     {
      if(ArrayResize(m_data,index+10)<=0)
         return false;
      m_data_max=ArraySize(m_data)-1;
     }
//---
   m_data[index]=new СConnection(MathRand()/32767.0);
   if(!CheckPointer(m_data[index])!=POINTER_INVALID)
      return false;
   m_data_total=MathMax(m_data_total,index);
//---
   return (true);
  }
