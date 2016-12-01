<!-- BEGIN CONTENT WRAPPER -->
<div class="content">
    <div class="container">
        <div class="row">

            $Content


            <div class="event">
                <% with $Event %>

                    <h2>$Title</h2>

                    <h3>From: $StartDate.Nice  <% if $EndDate %> - Until: $EndDate.Nice<% end_if %> </h3>

                    <div class="main-image">
                        $HeaderPhoto.CroppedImage(500,200)
                    </div>

                    <p class="description">$Description</p>

                    <h3>Images</h3>
                    <ul class="images">
                        <% loop $EventImages %>
                            <li>
                                <% if $Width && $Height %>
                                    <img src="$Image.CroppedImage($Width,$Height).URL" alt="$Image.AltText"/>
                                <% else %>
                                    <img src="$Image.URL" alt="$Image.AltText"/>
                                <% end_if %>
                            </li>
                        <% end_loop %>
                    </ul>

                    <h3>Files</h3>
                    <ul class="files">
                        <% loop $EventFiles %>
                            <li><a href="$File.URL">$Title <span>($File.Size)</span></a></li>
                        <% end_loop %>
                    </ul>
                <% end_with %>
            </div>


            <h3>Sign Up</h3>

            <% if $AvailableSpots %>
                <p>Number of attendees is limited, only <b>$AvailableSpots</b> left!</p>
            <% end_if %>

            $SignUpForm

        </div>
    </div>
</div>
<!-- END CONTENT WRAPPER -->