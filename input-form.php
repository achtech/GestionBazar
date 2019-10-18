<?php include 'header.php'?> 
<section role="main" id="main">

		<noscript class="message black-gradient simpler">Your browser does not support JavaScript! Some features won't work as expected...</noscript>

		<hgroup id="main-title" class="thin">
			<h1>Form elements</h1>
		</hgroup>

		<div class="with-padding">

			<p class="button-height">
				Inputs color
				<input type="checkbox" name="anthracite-inputs" id="anthracite-inputs" class="switch medium wide anthracite-active mid-margin-left" value="1" data-text-on="BLACK" data-text-off="WHITE">
			</p>

			<form method="post" action="" class="columns" onsubmit="return false">

				<div class="four-columns six-columns-tablet twelve-columns-mobile reduce-four-columns">

					<h3 class="thin underline">Inputs</h3>

					<fieldset class="fieldset">
						<legend class="legend">Text inputs</legend>

						<p class="inline-label">
							<label for="input-1" class="label">Unstyled input</label>
							<input type="text" name="input-1" id="input-1" size="9" value="Unstyled text input">
						</p>

						<p class="button-height inline-label">
							<label for="input-2" class="label">Styled input</label>
							<input type="text" name="input-2" id="input-2" size="9" class="input" value="Styled text input">
						</p>

						<p class="button-height inline-label">
							<label for="input-3" class="label">Full width</label>
							<input type="text" name="input-3" id="input-3" size="9" class="input full-width" value="Full-width text input">
						</p>

						<p class="button-height inline-label">
							<label for="input-3" class="label">Disabled</label>
							<input type="text" name="input-3" id="input-3" size="9" class="input full-width" value="Disabled text input" disabled>
						</p>

						<p class="inline-label">
							<label for="input-4" class="label">Invisible</label>
							<input type="text" name="input-4" id="input-4" size="9" class="input-unstyled" value="Transparent text input">
						</p>
					</fieldset>

					<fieldset class="fieldset">
						<legend class="legend">Radios and checkboxes</legend>

						<p>
							<input type="radio" name="radio" id="radio-1" value="1"> <label for="radio-1" class="label">Unstyled radio</label>
							<input type="radio" name="radio" id="radio-2" value="2" class="radio mid-margin-left"> <label for="radio-2" class="label">Styled radio</label>
							<input type="radio" name="radio" id="radio-3" value="3" class="radio mid-margin-left" disabled> <label for="radio-3" class="label">Disabled radio</label>
						</p>

						<p>
							<input type="checkbox" name="checkbox-1" id="checkbox-1" value="1"> <label for="checkbox-1" class="label">Unstyled checkbox</label>
							<input type="checkbox" name="checkbox-2" id="checkbox-2" value="1" class="checkbox mid-margin-left"> <label for="checkbox-2" class="label">Styled checkbox</label>
							<input type="checkbox" name="checkbox-3" id="checkbox-3" value="1" class="checkbox mid-margin-left" disabled> <label for="checkbox-3" class="label">Disabled checkbox</label>
						</p>
					</fieldset>

					<fieldset class="fieldset">
						<legend class="legend">Checkables in buttons</legend>
						<p class="button-height inline-label">
							<span class="label">Radios</span>

							<span class="button-group">
								<label for="button-radio-1" class="button green-active">
									<input type="radio" name="button-radio" id="button-radio-1" value="1" checked>
									First
								</label>
								<label for="button-radio-2" class="button green-active">
									<input type="radio" name="button-radio" id="button-radio-2" value="2">
									Second
								</label>
								<label for="button-radio-3" class="button green-active">
									<input type="radio" name="button-radio" id="button-radio-3" value="3">
									Third
								</label>
							</span>
						</p>

						<p class="button-height inline-label">
							<span class="label">Checkboxes</span>

							<span class="button-group">
								<label for="button-checkbox-1" class="button green-active">
									<input type="checkbox" name="button-checkbox-1" id="button-checkbox-1" value="1">
									First
								</label>
								<label for="button-checkbox-2" class="button green-active">
									<input type="checkbox" name="button-checkbox-2" id="button-checkbox-2" value="2" checked>
									Second
								</label>
								<label for="button-checkbox-3" class="button green-active">
									<input type="checkbox" name="button-checkbox-3" id="button-checkbox-3" value="3">
									Third
								</label>
							</span>
						</p>
					</fieldset>

				</div>
		
    </section>
    <!-- End main content -->
<?php include 'menu-side.php'?> 
<?php include 'footer.php'?> 