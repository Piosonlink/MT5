double CNeuron::sumDOW(const CArrayObj *&nextLayer) const
  {
   double sum=0.0;
   int total=nextLayer.Total()-1;
   for(int n=0; n<total; n++)
     {
      СConnection *con=outputWeights.At(n);
      CNeuron *neuron=nextLayer.At(n);
      sum+=con.weight*neuron.gradient;
     }
   return sum;
  }
