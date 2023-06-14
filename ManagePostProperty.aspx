<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMasterPage.master" AutoEventWireup="true" CodeFile="ManagePostProperty.aspx.cs" Inherits="ManagePostProperty" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<div class="innerpage-banner center bg-overlay-dark-7 py-7" style="background:url(assets/images/bg/04.jpg) no-repeat; background-size:cover; background-position: center center;">
		<div class="container">
			<div class="row all-text-white">
				<div class="col-md-12 align-self-center">
					<h1 class="innerpage-title">Form</h1>
					<h6 class="subtitle">We transform your perception into an excellent website</h6>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item active"><a href="index.html"><i class="ti-home"></i> Home</a></li>
							<li class="breadcrumb-item">Form</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- =======================
	Banner innerpage -->


	<!-- =======================
	Form -->
	<section>
		<div class="container">
			<div class="row">
				<div class="col-md-6">

					<!-- Email -->
					<div class="form-group">
						<label>Email</label>
						<input class="form-control" type="email" placeholder="Email">
					</div>

					<!-- Password -->
					<div class="form-group">
						<label>Password</label>
						<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
					</div>

					<!-- size -->
					<form>
						<label>Input Size</label>
						<input class="form-control form-control-lg" type="text" placeholder=".form-control-lg">
						<input class="form-control" type="text" placeholder="Default input">
						<input class="form-control form-control-sm" type="text" placeholder=".form-control-sm">
					</form>

					<!-- Textarea -->
					<div class="form-group">
						<label>Textarea</label>
						<textarea class="form-control" rows="5" placeholder="Example textarea"></textarea>
					</div>

					<!-- Select -->
					<div class="form-group">
						<label>Select</label>
						<select class="custom-select select-big mb-3">
							<option selected="">All locations</option>
							<option value="location1">Chicago, US</option>
							<option value="location2">New York, US</option>
							<option value="location3">Seattle/Kirkland, US</option>
							<option value="location4">Los Angles, US</option>
							<option value="location5">Moscow, Russia</option>
							<option value="location6">Sydney, Australia</option>
							<option value="location7">Birmingham, UK</option>
							<option value="location7">Manchester, UK</option>
							<option value="location8">Beijing, China</option>
						</select>
					</div>
				</div>

				<div class="col-md-6">
					<!-- Multiple select -->
					<div class="form-group">
						<label>Multiple select</label>
						<select class="form-control" multiple="">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>

					<!-- form-group -->
					<form>
						<div class="form-group">
							<label for="exampleFormControlFile1">File input</label>
							<input type="file" class="form-control-file" id="exampleFormControlFile1">
						</div>
					</form>

					<div class="input-group mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text">Upload</span>
						</div>
						<div class="custom-file">
							<input type="file" class="custom-file-input" id="inputGroupFile01">
							<label class="custom-file-label" for="inputGroupFile01">Choose file</label>
						</div>
					</div>

					<!-- checkbox -->
					<label>Checkbox</label>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
						<label class="form-check-label" for="defaultCheck1">
							Default checkbox
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="defaultCheck2" disabled>
						<label class="form-check-label" for="defaultCheck2">
							Disabled checkbox
						</label>
					</div>

					<!-- custom checkbox -->
					<label class="mt-3">Custom checkbox</label>
					<div class="custom-control custom-checkbox mr-sm-2">
						<input type="checkbox" class="custom-control-input" id="customControlAutosizing">
						<label class="custom-control-label" for="customControlAutosizing">Remember my preference</label>
					</div>

					<label class="mt-3">Radio</label>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
						<label class="form-check-label" for="exampleRadios1">
							Default radio
						</label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
						<label class="form-check-label" for="exampleRadios2">
							Second default radio
						</label>
					</div>
					<div class="form-check disabled">
						<input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios3" value="option3" disabled>
						<label class="form-check-label" for="exampleRadios3">
							Disabled radio
						</label>
					</div>

					<!-- radio -->
					<label class="mt-4">Custom radio</label><br>
					<div class="custom-control custom-radio">
						<input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
						<label class="custom-control-label" for="customRadio1">Toggle this custom radio</label>
					</div>
					<div class="custom-control custom-radio">
						<input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
						<label class="custom-control-label" for="customRadio2">Or toggle this other custom radio</label>
					</div>

				</div>
			</div>
		</div>
	</section>
</asp:Content>

