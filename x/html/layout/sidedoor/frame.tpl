{if $TPL_EXISTS && $Xtra != '' AND ($Xtra != 'index')}
	{include file="../../../{$suite}/x{$Xtra|ucfirst}/$method.tpl"}
{else}
	{include file="$Door/portal.tpl"}
{/if}