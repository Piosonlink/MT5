class СConnection : public CObject
  {
public:
   double            weight;
   double            deltaWeight;
                     СConnection(double w) { weight=w; deltaWeight=0; }
                    ~СConnection(){};
   //--- methods for working with files
   virtual bool      Save(const int file_handle);
   virtual bool      Load(const int file_handle);
  };
