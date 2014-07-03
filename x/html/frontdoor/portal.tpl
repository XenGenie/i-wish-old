
	<script type="text/javascript">

		function executeAfterFade() {
		    //alert('Done!');

	
			setTimeout(function(){

							$('.godbar').css({
						    	top: 0
						    });
			},777);

		}

		function fadeInElements(elementSelectors, lastFunction) {
		    $(elementSelectors[0]).hide().load('/html/'+$(elementSelectors[0]).attr('blox').slice(1).toLowerCase().replace('-','/'),function (){
		        $(elementSelectors[0]).show(function  () {
		        	elementSelectors[1] ? 
		        	fadeInElements(elementSelectors.splice(1, elementSelectors.length - 1), lastFunction) : lastFunction(); 
		        }); 
		    });
		}

		$(document).ready(function() { 
			
			{if 0 == $oBlox|count}
				$('.godbar').css({
			    	top: 0
			    });
			{else}

			 fadeInElements($('.blox-panel'), executeAfterFade);	  
			{/if}

		});
		
	</script>

