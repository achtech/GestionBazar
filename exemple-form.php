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

				<div class="four-columns six-columns-tablet twelve-columns-mobile">

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

				<div class="four-columns six-columns-tablet twelve-columns-mobile">

					<h3 class="thin underline">Switches</h3>

					<p class="wrapped button-height">
						<input type="checkbox" name="switch-mode" id="switch-mode" class="switch float-right" value="1">
						Reversed style
					</p>

					<p>The template includes a complete set of switches sizes, all focusable and controlable by keyboard:</p>

					<div id="switch-wrapper" class="margin-bottom">
						<p class="button-height">
							<input type="checkbox" name="switch" id="switch" class="switch mid-margin-right" value="1"> <label for="switch">Switch</label>
						</p>
						<p class="button-height">
							<input type="checkbox" name="switch-custom-1" id="switch-custom-1" class="switch blue-active mid-margin-right" value="1" checked data-text-on="YES" data-text-off="NO">
							<label for="switch-custom-1">Custom texts &amp; active color</label>
						</p>

						<p class="button-height">
							<input type="checkbox" name="switch-custom-2" id="switch-custom-2" class="switch wide red-active mid-margin-right" value="1" checked data-text-on="TRUE" data-text-off="FALSE">
							<label for="switch-custom-2">Wide switch</label>
						</p>

						<p class="button-height">
							<input type="checkbox" name="switch-custom-3" id="switch-custom-3" class="switch wider orange-active mid-margin-right" value="1" checked data-text-on="ENABLED" data-text-off="DISABLED">
							<label for="switch-custom-3">Wider switch</label>
						</p>

						<p class="button-height">
							<input type="checkbox" name="switch-medium-1" id="switch-medium-1" class="switch medium mid-margin-right" value="1"> <label for="switch-medium-1">Medium size</label>
						</p>

						<p class="button-height">
							<input type="checkbox" name="switch-medium-2" id="switch-medium-2" class="switch medium wide mid-margin-right" value="1" checked data-text-on="TRUE" data-text-off="FALSE"> <label for="switch-medium-2">Medium size - wide</label>
						</p>

						<p class="button-height">
							<input type="checkbox" name="switch-medium-3" id="switch-medium-3" class="switch medium wider mid-margin-right" value="1" checked data-text-on="ENABLED" data-text-off="DISABLED"> <label for="switch-medium-3">Medium size - wider</label>
						</p>

						<p>
							<input type="checkbox" name="switch-tiny" id="switch-tiny" class="switch tiny mid-margin-right" value="1"> <label for="switch-tiny">Tiny size</label>
						</p>

						<p>
							<input type="checkbox" name="switch-mini" id="switch-mini" class="switch mini mid-margin-right" value="1"> <label for="switch-mini">Mini size</label>
						</p>
					</div>

					<p>
						<span class="float-right">Disabled <input type="checkbox" name="switch-enable" id="switch-enable" class="switch mini" value="1"> Enabled</span>
						As any input, they may be disabled:
					</p>

					<p class="button-height" id="disabled-switches">
						<input type="checkbox" name="switch-disabled" id="switch-disabled" class="switch mid-margin-right" value="1" disabled>
						<input type="checkbox" name="switch-medium" id="switch-medium" class="switch medium mid-margin-right" value="1" disabled>
						<input type="checkbox" name="switch-tiny" id="switch-tiny" class="switch tiny mid-margin-right" value="1" disabled>
						<input type="checkbox" name="switch-mini" id="switch-mini" class="switch mini mid-margin-right" value="1" disabled>
					</p>

				</div>

				<div class="new-row-tablet four-columns six-columns-tablet twelve-columns-mobile">

					<h3 class="thin underline">Pseudo-inputs</h3>

					<p>This style mimics text inputs, so mixed elements can be included:</p>

					<p class="button-height">
						<span class="input">
							<label for="pseudo-input-1" class="button blue-gradient">Label</label>
							<input type="text" name="pseudo-input-1" id="pseudo-input-1" class="input-unstyled" value="Value">
							<a href="javascript:void(0)" class="button compact">Check</a>
						</span>
					</p>

					<p class="button-height">
						<span class="input">
							<label for="pseudo-input-2" class="button orange-gradient">
								<span class="icon-phone small-margin-right"></span>
							</label>
							<select name="pseudo-input-select" class="select compact expandable-list" style="width: 100px">
								<option value="USA">USA</option>
								<option value="United Kingdom">United Kingdom</option>
								<option value="Afghanistan">Afghanistan</option>
								<option value="Albania">Albania</option>
								<option value="Algeria">Algeria</option>
								<option value="American Samoa">American Samoa</option>
								<option value="Andorra">Andorra</option>
								<option value="Angola">Angola</option>
								<option value="Anguilla">Anguilla</option>
								<option value="Antarctica">Antarctica</option>
								<option value="Antigua and Barbuda">Antigua and Barbuda</option>
								<option value="Argentina">Argentina</option>
								<option value="Armenia">Armenia</option>
								<option value="Aruba">Aruba</option>
								<option value="Australia">Australia</option>
								<option value="Austria">Austria</option>
								<option value="Azerbaijan">Azerbaijan</option>
								<option value="Bahamas">Bahamas</option>
								<option value="Bahrain">Bahrain</option>
								<option value="Bangladesh">Bangladesh</option>
								<option value="Barbados">Barbados</option>
								<option value="Belarus">Belarus</option>
								<option value="Belgium">Belgium</option>
								<option value="Belize">Belize</option>
								<option value="Benin">Benin</option>
								<option value="Bermuda">Bermuda</option>
								<option value="Bhutan">Bhutan</option>
								<option value="Bolivia">Bolivia</option>
								<option value="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
								<option value="Botswana">Botswana</option>
								<option value="Bouvet Island">Bouvet Island</option>
								<option value="Brazil">Brazil</option>
								<option value="British Indian Ocean Territory">British Indian Ocean Territory</option>
								<option value="Brunei Darussalam">Brunei Darussalam</option>
								<option value="Bulgaria">Bulgaria</option>
								<option value="Burkina Faso">Burkina Faso</option>
								<option value="Burundi">Burundi</option>
								<option value="Cambodia">Cambodia</option>
								<option value="Cameroon">Cameroon</option>
								<option value="Canada">Canada</option>
								<option value="Cape Verde">Cape Verde</option>
								<option value="Cayman Islands">Cayman Islands</option>
								<option value="Central African Republic">Central African Republic</option>
								<option value="Chad">Chad</option>
								<option value="Chile">Chile</option>
								<option value="China">China</option>
								<option value="Christmas Island">Christmas Island</option>
								<option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
								<option value="Colombia">Colombia</option>
								<option value="Comoros">Comoros</option>
								<option value="Congo">Congo</option>
								<option value="Congo, The Democratic Republic of The">Congo, The Democratic Republic of The</option>
								<option value="Cook Islands">Cook Islands</option>
								<option value="Costa Rica">Costa Rica</option>
								<option value="Cote D'ivoire">Cote D'ivoire</option>
								<option value="Croatia">Croatia</option>
								<option value="Cuba">Cuba</option>
								<option value="Cyprus">Cyprus</option>
								<option value="Czech Republic">Czech Republic</option>
								<option value="Denmark">Denmark</option>
								<option value="Djibouti">Djibouti</option>
								<option value="Dominica">Dominica</option>
								<option value="Dominican Republic">Dominican Republic</option>
								<option value="Ecuador">Ecuador</option>
								<option value="Egypt">Egypt</option>
								<option value="El Salvador">El Salvador</option>
								<option value="Equatorial Guinea">Equatorial Guinea</option>
								<option value="Eritrea">Eritrea</option>
								<option value="Estonia">Estonia</option>
								<option value="Ethiopia">Ethiopia</option>
								<option value="Falkland Islands (Malvinas)">Falkland Islands (Malvinas)</option>
								<option value="Faroe Islands">Faroe Islands</option>
								<option value="Fiji">Fiji</option>
								<option value="Finland">Finland</option>
								<option value="France">France</option>
								<option value="French Guiana">French Guiana</option>
								<option value="French Polynesia">French Polynesia</option>
								<option value="French Southern Territories">French Southern Territories</option>
								<option value="Gabon">Gabon</option>
								<option value="Gambia">Gambia</option>
								<option value="Georgia">Georgia</option>
								<option value="Germany">Germany</option>
								<option value="Ghana">Ghana</option>
								<option value="Gibraltar">Gibraltar</option>
								<option value="Greece">Greece</option>
								<option value="Greenland">Greenland</option>
								<option value="Grenada">Grenada</option>
								<option value="Guadeloupe">Guadeloupe</option>
								<option value="Guam">Guam</option>
								<option value="Guatemala">Guatemala</option>
								<option value="Guinea">Guinea</option>
								<option value="Guinea-bissau">Guinea-bissau</option>
								<option value="Guyana">Guyana</option>
								<option value="Haiti">Haiti</option>
								<option value="Heard Island and Mcdonald Islands">Heard Island and Mcdonald Islands</option>
								<option value="Holy See (Vatican City State)">Holy See (Vatican City State)</option>
								<option value="Honduras">Honduras</option>
								<option value="Hong Kong">Hong Kong</option>
								<option value="Hungary">Hungary</option>
								<option value="Iceland">Iceland</option>
								<option value="India">India</option>
								<option value="Indonesia">Indonesia</option>
								<option value="Iran, Islamic Republic of">Iran, Islamic Republic of</option>
								<option value="Iraq">Iraq</option>
								<option value="Ireland">Ireland</option>
								<option value="Israel">Israel</option>
								<option value="Italy">Italy</option>
								<option value="Jamaica">Jamaica</option>
								<option value="Japan">Japan</option>
								<option value="Jordan">Jordan</option>
								<option value="Kazakhstan">Kazakhstan</option>
								<option value="Kenya">Kenya</option>
								<option value="Kiribati">Kiribati</option>
								<option value="Korea, Democratic People's Republic of">Korea, Democratic People's Republic of</option>
								<option value="Korea, Republic of">Korea, Republic of</option>
								<option value="Kuwait">Kuwait</option>
								<option value="Kyrgyzstan">Kyrgyzstan</option>
								<option value="Lao People's Democratic Republic">Lao People's Democratic Republic</option>
								<option value="Latvia">Latvia</option>
								<option value="Lebanon">Lebanon</option>
								<option value="Lesotho">Lesotho</option>
								<option value="Liberia">Liberia</option>
								<option value="Libyan Arab Jamahiriya">Libyan Arab Jamahiriya</option>
								<option value="Liechtenstein">Liechtenstein</option>
								<option value="Lithuania">Lithuania</option>
								<option value="Luxembourg">Luxembourg</option>
								<option value="Macao">Macao</option>
								<option value="Macedonia, The Former Yugoslav Republic of">Macedonia, The Former Yugoslav Republic of</option>
								<option value="Madagascar">Madagascar</option>
								<option value="Malawi">Malawi</option>
								<option value="Malaysia">Malaysia</option>
								<option value="Maldives">Maldives</option>
								<option value="Mali">Mali</option>
								<option value="Malta">Malta</option>
								<option value="Marshall Islands">Marshall Islands</option>
								<option value="Martinique">Martinique</option>
								<option value="Mauritania">Mauritania</option>
								<option value="Mauritius">Mauritius</option>
								<option value="Mayotte">Mayotte</option>
								<option value="Mexico">Mexico</option>
								<option value="Micronesia, Federated States of">Micronesia, Federated States of</option>
								<option value="Moldova, Republic of">Moldova, Republic of</option>
								<option value="Monaco">Monaco</option>
								<option value="Mongolia">Mongolia</option>
								<option value="Montserrat">Montserrat</option>
								<option value="Morocco">Morocco</option>
								<option value="Mozambique">Mozambique</option>
								<option value="Myanmar">Myanmar</option>
								<option value="Namibia">Namibia</option>
								<option value="Nauru">Nauru</option>
								<option value="Nepal">Nepal</option>
								<option value="Netherlands">Netherlands</option>
								<option value="Netherlands Antilles">Netherlands Antilles</option>
								<option value="New Caledonia">New Caledonia</option>
								<option value="New Zealand">New Zealand</option>
								<option value="Nicaragua">Nicaragua</option>
								<option value="Niger">Niger</option>
								<option value="Nigeria">Nigeria</option>
								<option value="Niue">Niue</option>
								<option value="Norfolk Island">Norfolk Island</option>
								<option value="Northern Mariana Islands">Northern Mariana Islands</option>
								<option value="Norway">Norway</option>
								<option value="Oman">Oman</option>
								<option value="Pakistan">Pakistan</option>
								<option value="Palau">Palau</option>
								<option value="Palestinian Territory, Occupied">Palestinian Territory, Occupied</option>
								<option value="Panama">Panama</option>
								<option value="Papua New Guinea">Papua New Guinea</option>
								<option value="Paraguay">Paraguay</option>
								<option value="Peru">Peru</option>
								<option value="Philippines">Philippines</option>
								<option value="Pitcairn">Pitcairn</option>
								<option value="Poland">Poland</option>
								<option value="Portugal">Portugal</option>
								<option value="Puerto Rico">Puerto Rico</option>
								<option value="Qatar">Qatar</option>
								<option value="Reunion">Reunion</option>
								<option value="Romania">Romania</option>
								<option value="Russian Federation">Russian Federation</option>
								<option value="Rwanda">Rwanda</option>
								<option value="Saint Helena">Saint Helena</option>
								<option value="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
								<option value="Saint Lucia">Saint Lucia</option>
								<option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
								<option value="Saint Vincent and The Grenadines">Saint Vincent and The Grenadines</option>
								<option value="Samoa">Samoa</option>
								<option value="San Marino">San Marino</option>
								<option value="Sao Tome and Principe">Sao Tome and Principe</option>
								<option value="Saudi Arabia">Saudi Arabia</option>
								<option value="Senegal">Senegal</option>
								<option value="Serbia and Montenegro">Serbia and Montenegro</option>
								<option value="Seychelles">Seychelles</option>
								<option value="Sierra Leone">Sierra Leone</option>
								<option value="Singapore">Singapore</option>
								<option value="Slovakia">Slovakia</option>
								<option value="Slovenia">Slovenia</option>
								<option value="Solomon Islands">Solomon Islands</option>
								<option value="Somalia">Somalia</option>
								<option value="South Africa">South Africa</option>
								<option value="South Georgia and The South Sandwich Islands">South Georgia and The South Sandwich Islands</option>
								<option value="Spain">Spain</option>
								<option value="Sri Lanka">Sri Lanka</option>
								<option value="Sudan">Sudan</option>
								<option value="Suriname">Suriname</option>
								<option value="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
								<option value="Swaziland">Swaziland</option>
								<option value="Sweden">Sweden</option>
								<option value="Switzerland">Switzerland</option>
								<option value="Syrian Arab Republic">Syrian Arab Republic</option>
								<option value="Taiwan, Province of China">Taiwan, Province of China</option>
								<option value="Tajikistan">Tajikistan</option>
								<option value="Tanzania, United Republic of">Tanzania, United Republic of</option>
								<option value="Thailand">Thailand</option>
								<option value="Timor-leste">Timor-leste</option>
								<option value="Togo">Togo</option>
								<option value="Tokelau">Tokelau</option>
								<option value="Tonga">Tonga</option>
								<option value="Trinidad and Tobago">Trinidad and Tobago</option>
								<option value="Tunisia">Tunisia</option>
								<option value="Turkey">Turkey</option>
								<option value="Turkmenistan">Turkmenistan</option>
								<option value="Turks and Caicos Islands">Turks and Caicos Islands</option>
								<option value="Tuvalu">Tuvalu</option>
								<option value="Uganda">Uganda</option>
								<option value="Ukraine">Ukraine</option>
								<option value="United Arab Emirates">United Arab Emirates</option>
								<option value="United Kingdom">United Kingdom</option>
								<option value="United States">United States</option>
								<option value="United States Minor Outlying Islands">United States Minor Outlying Islands</option>
								<option value="Uruguay">Uruguay</option>
								<option value="Uzbekistan">Uzbekistan</option>
								<option value="Vanuatu">Vanuatu</option>
								<option value="Venezuela">Venezuela</option>
								<option value="Viet Nam">Viet Nam</option>
								<option value="Virgin Islands, British">Virgin Islands, British</option>
								<option value="Virgin Islands, U.S.">Virgin Islands, U.S.</option>
								<option value="Wallis and Futuna">Wallis and Futuna</option>
								<option value="Western Sahara">Western Sahara</option>
								<option value="Yemen">Yemen</option>
								<option value="Zambia">Zambia</option>
								<option value="Zimbabwe">Zimbabwe</option>
							</select>
							<input type="text" name="pseudo-input-2" id="pseudo-input-2" class="input-unstyled input-sep" placeholder="Area" value="" maxlength="3" style="width: 30px;">
							<input type="text" name="pseudo-input-3" id="pseudo-input-3" class="input-unstyled" placeholder="Number" value="" style="width: 80px;">
						</span>
					</p>

					<p class="button-height">
						<span class="input">
							<input type="text" name="pseudo-input-4" id="pseudo-input-4" class="input-unstyled" value="">
							<span class="info-spot">
								<span class="icon-info-round"></span>
								<span class="info-bubble">
									This is an information bubble to help the user.
								</span>
							</span>
						</span>
					</p>

					<ul class="inputs large">
						<li><span class="icon-user mid-margin-right"></span><input type="text" name="login" id="login" value="" class="input-unstyled" placeholder="Login" autocomplete="off"></li>
						<li><span class="icon-lock mid-margin-right"></span><input type="password" name="pass" id="pass" value="" class="input-unstyled" placeholder="Password" autocomplete="off"></li>
					</ul>

					<h3 class="thin underline">Special inputs</h3>

					<p class="button-height">
						<input type="file" name="special-input-1" id="special-input-1" value="" class="file" multiple>
					</p>

					<p class="button-height">
						<span class="number input margin-right">
							<button type="button" class="button number-down">-</button>
							<input type="text" name="special-input-2" id="special-input-2" value="320" size="4" class="input-unstyled">
							<button type="button" class="button number-up">+</button>
						</span>
					</p>

					<p class="button-height">
						<span class="input">
							<span class="icon-calendar"></span>
							<input type="text" name="special-input-3" id="special-input-3" class="input-unstyled datepicker" value="">
						</span>
					</p>

				</div>

				<div class="new-row-desktop four-columns six-columns-tablet twelve-columns-mobile">

					<h3 class="thin underline">Form validation</h3>

					<fieldset class="fieldset">
						<legend class="legend">Regular inputs</legend>

						<p class="button-height inline-label">
							<label for="validation-required" class="label">Required</label>
							<input type="text" name="validation-required" id="validation-required" class="input validate[required]" value="" data-tooltip-options='{"position":"right"}'>
						</p>

						<p class="button-height inline-label">
							<label for="validation-email" class="label">Email</label>
							<input type="text" name="validation-email" id="validation-email" class="input validate[required,custom[email]]" value="">
						</p>

						<p class="button-height inline-label">
							<label for="validation-length" class="label">Minimum length</label>
							<input type="text" name="validation-length" id="validation-length" class="input validate[required,minSize[6]]" value="">
						</p>
					</fieldset>

					<fieldset class="fieldset">
						<legend class="legend">Special inputs</legend>

						<p class="button-height inline-label">
							<label for="validation-number" class="label">Number</label>
							<span class="number input margin-right">
								<button type="button" class="button number-down">-</button>
								<input type="text" name="validation-number" id="validation-number" value="45" size="4" class="input-unstyled validate[required,min[5],max[40]]">
								<button type="button" class="button number-up">+</button>
							</span>
						</p>

						<p class="button-height inline-label">
							<label for="validation-select" class="label">Select</label>
							<select id="validation-select" name="validation-select" class="select validate[required]">
								<option value="">Please select</option>
								<option value="1">First option</option>
								<option value="2">Second option</option>
								<option value="3">Third option</option>
							</select>
						</p>
					</fieldset>

					<div class="button-height"><button type="submit" class="button blue-gradient">Test validation</button></div>

				</div>

				<div class="new-row-tablet four-columns six-columns-tablet twelve-columns-mobile">

					<h3 class="thin underline">Selects</h3>

					<p>Custom skin select:</p>

					<p class="button-height">
						<select class="select">
							<option value="1">First value</option>
							<option value="2" disabled>Second value</option>
							<optgroup label="Group">
								<option value="11">First value</option>
								<option value="12">Second value</option>
								<option value="13" selected="selected">Selected value</option>
								<option value="14" disabled>Disabled value</option>
							</optgroup>
							<option value="3">Other value</option>
							<option value="4">Last value</option>
						</select>
						<select class="select auto-open blue-gradient">
							<option value="1">First value</option>
							<option value="2">Second value</option>
							<option value="3" selected="selected">Open on hover</option>
							<option value="4">Last value</option>
						</select>
					</p>

					<p>These custom select come with advanced features:</p>

					<ul class="bullet-list">
						<li>Two opening modes: click and hover</li>
						<li>Preserve original select width if set</li>
						<li>Screen position auto-detect: the list open on top if there is not enough space below the select - even while scrolling!</li>
						<li>Support for multiple selects, with easy-selection mode (enabled automatically on touch devices)</li>
						<li>Display as drop-down or as list</li>
						<li>Keyboard focus, scroll and select</li>
						<li>Keyboard search: type one or more letters to jump to the first matching entry</li>
						<li>Configuration options are set with classes and inline data attribute - no javascript needed</li>
						<li>On touch screens, fallback to OS interface when selecting</li>
					</ul>

				</div>

				<div class="four-columns six-columns-tablet twelve-columns-mobile clearfix">

					<h3 class="thin underline">Selects examples</h3>

					<div class="float-left margin-right margin-bottom">
						<h6>Expandable&nbsp;list<br>
						<small>For long values</small></h6>
						<p class="button-height">
							<select class="select expandable-list anthracite-gradient glossy" style="width:100px" tabindex="2">
								<option value="1">First very long value</option>
								<option value="2">Second value even longer than the first one</option>
								<option value="3" selected="selected">Expand</option>
								<option value="4" disabled>Disabled value</option>
							</select>
						</p>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6>Disabled<br>
						<small>By class or input</small></h6>
						<p class="button-height">
							<select class="select blue-gradient disabled">
								<option value="1">First value</option>
								<option value="2">Second value</option>
								<option value="3" selected="selected">Disabled</option>
								<option value="4" disabled>Disabled value</option>
							</select>
						</p>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6>Check list<br>
						<small>Touch friendly</small></h6>
						<p class="button-height">
							<select class="select blue-gradient check-list">
								<option value="1">First value</option>
								<option value="2">Second value</option>
								<option value="3" selected="selected">Check list</option>
								<option value="4" disabled>Disabled value</option>
							</select>
						</p>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6>Multiple selection<br>
						<small>(hold Ctrl/Cmd)</small></h6>
						<p class="button-height">
							<select class="select multiple-as-single orange-gradient" multiple>
								<option value="1">First value</option>
								<option value="2">Second value</option>
								<option value="3" selected="selected">Multiple</option>
								<option value="4" disabled>Disabled value</option>
							</select>
						</p>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6>Multiple + check<br>
						<small>Easy selection</small></h6>
						<p class="button-height">
							<select class="select multiple-as-single easy-multiple-selection green-gradient check-list" multiple>
								<option value="1">First value</option>
								<option value="2">Second value</option>
								<option value="3" selected="selected">Multiple</option>
								<option value="4" disabled>Disabled value</option>
							</select>
						</p>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6>Multiple + allow empty<br>
						<small>Easy selection</small></h6>
						<p class="button-height">
							<select class="select multiple-as-single easy-multiple-selection allow-empty red-gradient check-list" multiple>
								<option value="1">First value</option>
								<option value="2">Second value</option>
								<option value="3" selected="selected">Multiple</option>
								<option value="4" disabled>Disabled value</option>
							</select>
						</p>
					</div>

					<div class="float-left margin-right margin-bottom" style="clear:left">
						<h6 class="small-margin-bottom">Single as list<br>
						<small>(no multiple selection)</small></h6>
						<select class="select multiple anthracite-gradient">
							<option value="1">First value</option>
							<option value="2">Second value</option>
							<option value="3" selected="selected">Multiple</option>
							<option value="4" disabled>Disabled value</option>
						</select>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6 class="small-margin-bottom">Multiple as list<br>
						<small>(hold Ctrl/Cmd)</small></h6>
						<select class="select multiple grey-gradient" multiple>
							<option value="1">First value</option>
							<option value="2">Second value</option>
							<option value="3" selected="selected">Multiple</option>
							<option value="4" disabled>Disabled value</option>
						</select>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6 class="small-margin-bottom">Multiple + check<br>
						<small>Easy selection</small></h6>
						<select class="select multiple white-gradient easy-multiple-selection check-list" multiple>
							<option value="1">First value</option>
							<option value="2">Second value</option>
							<option value="3" selected="selected">Multiple</option>
							<option value="4" disabled>Disabled value</option>
						</select>
					</div>

					<div class="float-left margin-right margin-bottom">
						<h6 class="small-margin-bottom">In a tooltip<br>
						<small>Context menu</small></h6>
						<button id="select-tooltip" type="button" class="button" style="width: 100px">Click me!</button>
						<div id="select-context">
							<select class="select multiple white-gradient easy-multiple-selection check-list no-bg" multiple>
								<option value="1">First value</option>
								<option value="2">Second value</option>
								<option value="3" selected="selected">Context menu</option>
								<option value="4" disabled>Disabled value</option>
							</select>
						</div>
					</div>
				</div>

			</form>

		</div>

    </section>
    <!-- End main content -->
<?php include 'menu-side.php'?> 
<?php include 'footer.php'?> 