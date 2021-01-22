class socketserver:
  def __init__(self, address = '', port = 9090):
      self.sock = socket.socket(sockert.AF_INET, socket.SOCK_STREAM)
      self.address = adress
      self.port = port
      self.sock.bind((seld.address, self.port))
      self.cummdata = ''
    
  def recvmsg(self):
      self.sock.listen(1)
      self.conn, self.addr = self.sock.accept()
      print('connected to' , self.addr)
      self.cummdata = ''
      
      while True:
          data = self.conn.recv(10000)
          self.cummdata+=data.decode("utf-8")
          if not data:
              break
          self.conn.send(byte(calcregr(self.cummdata), "utf-8"))
          return self.cummdata
 def __del__(self):
    self.sock.close()
