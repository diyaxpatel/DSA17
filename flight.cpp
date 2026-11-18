#include <iostream>
using namespace std;
int main(){
    int a[20][20],visited[20]={0};
    int n,i,j,start,count=0;
    int q[100],front =0 ,rear =-1;
    cout<<"enter no of cities";
    cin>>n;
    cout<<"enter adjacency matrix";
    for(i=0;i<n;i++){
        for(j=0;j<n;j++){
            cin>>a[i][j];
        }
    }
    cout<< "enter starting city(0 to " << n-1<<")";
    cin>>start;
    q[++rear]=start;
    visited[start]=1;
    while(front<=rear){
        int v= q[front++];
        count++;
        for(i=0;i<n;i++){
            if(a[v][i] == 1 && visited[i] == 0){
                q[++rear]=i;
                visited[i]=1;
            }
        }
    }
    if(count == n){
        cout<<"graph is connected";
    } else{
        cout<<"graph is not connected";
    }
    return 0;
}
