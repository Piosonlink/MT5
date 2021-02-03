class CLayer: public CArrayObj
  {
private:
   uint              iOutputs;
public:
                     CLayer(const int outputs=0) { iOutputs=outpus; };
                    ~CLayer(void){};
   //---
   virtual bool      CreateElement(const int index);
   virtual int       Type(void) const { return(0x7779); }
   };
