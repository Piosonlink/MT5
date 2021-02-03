void CNeuron::calcHiddenGradients(const CArrayObj *&nextLayer)
  {
   double dow=sumDOW(nextLayer);
   gradient=dow*CNeuron::activationFunctionDerivative(outputVal);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void CNeuron::calcOutputGradients(double targetVals)
  {
   double delta=targetVals-outputVal;
   gradient=delta*CNeuron::activationFunctionDerivative(outputVal);
  }
