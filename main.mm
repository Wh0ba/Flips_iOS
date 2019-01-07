#import "helpers/flips.h"


int main(int argc, char **argv, char **envp) {
	
	
	if (argc > 3) {
		
		struct manifestinfo manifestinfo={false, false, NULL};
		errorinfo result = ApplyPatch(
		argv[1],//<-- INPUT PATCH 
		argv[2],//<-- INPUT ROMFILE
		NO, //<-- Do not verify input param 
		argv[3],//<-- OUTPUT ROM (NEW) 
		&manifestinfo, NO);

		if(result.level == el_warning){
			printf("Warning: %s\n" ,result.description);
		}
		else if(result.level != el_ok){
			printf("Failed to apply BPS patch: %s\n", result.description);
		}
		
		
		
	}else {
		printf("usage :\n rompatcher patchFile romFile outputRom\napplies the patch file to the rom and creates a new patched rom\nmade possible by the flips source code https://github.com/Alcaro/Flips/");
		return 1;
	}
	
	
	return 0;
}

// vim:ft=objc
