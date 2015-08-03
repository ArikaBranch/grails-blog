<g:each in="${comments}" var="comment" status="i">
	<div class="row">	
		<div class="col-xs-12">
			<div id="comment${i}_author" class="col-xs-2 col-xs-offset-3">
				${comment?.author}
			</div> 
			<div class="col-xs-6  col-xs-offset-1">
				${comment?.comment}
			</div>
			<br/>
			<hr/>
		</div>
	</div>
</g:each>