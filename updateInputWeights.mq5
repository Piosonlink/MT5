void CNeuron::updateInputWeights(CArrayObj *&prevLayer)
  {
   int total=prevLayer.Total();
   for(int n=0; n<total && !IsStopped(); n++)
     {
      CNeuron *neuron= prevLayer.At(n);
      СConnection *con=neuron.outputWeights.At(m_myIndex);
      con.weight+=con.deltaWeight=eta*neuron.getOutputVal()*gradient + alpha*con.deltaWeight;
     }
  }
