CNeuron::CNeuron(uint numOutputs, uint myIndex)  :  eta(0.15), // net learning rate
                                                    alpha(0.5) // momentum  
  {
   for(uint c=0; c<numOutputs; c++)
     {
      outputWeights.CreateElement(c);
     }

   m_myIndex=myIndex;
  }
