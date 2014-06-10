float[]liney=new float[30];
void setup(){
  size(400,300);
  for(int i=0;i<30;i++){
    liney[i]=random(300);
  }
}
void draw(){
  background(255);
  for(int j=0;j<30;j++){
    liney[j]+=random(5);
   if(mouseY>=liney[j]){
     stroke(0);
   }
   else{
     stroke(255,0,0);
   }
    line(0,liney[j],width,liney[j]);
     if(liney[j]>height){
      liney[j]=0;
    }
  }
}
