#include <stdio.h>
#define  size 110
int main(void) {
  int n_frinds,gifts[size],t_count;
  scanf("%d\n",&n_frinds);
  
    for (int index =1 ;index<=n_frinds;index++){
       
       scanf("%d",&t_count);

          gifts[t_count]=index;
    }
    for (int jndex=1;jndex<=n_frinds;jndex++){

      printf("%d ",gifts[jndex]);

    }

  
  return 0;
}