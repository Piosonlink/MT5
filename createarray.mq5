class CArrayCon  :    public CArrayObj
  {
public:
                     CArrayCon(void){};
                    ~CArrayCon(void){};
   //---
   virtual bool      CreateElement(const int index);
   virtual int       Type(void) const { return(0x7781); }
   };
