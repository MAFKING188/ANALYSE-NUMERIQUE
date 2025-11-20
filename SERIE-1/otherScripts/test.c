#include <stdio.h>
#include <unistd.h>

int main(void)
{
   pid_t pid = fork();
   
   if(pid < 0)
   {
      printf("Erreur de creation\n");
   }
   else if (pid == 0)
   {
       printf("LA fils est created\n");
   }
   else
   {
      printf("La parent\n");
   }
   
   
 }
