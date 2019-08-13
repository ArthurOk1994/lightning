<aura:application extends="force:slds">
  <div class="c-container">
    <Lightning:layout multipleRows="true">
      <Lightning:layoutItem padding="around-small" size="12">
        <div class="page-section page-header">
          <h2>Header</h2>
        </div>
      </Lightning:layoutItem>
      <Lightning:layoutItem padding="around-small" size="12">
        <Lightning:layout>
          <Lightning:layoutItem padding="around-small" size="3">
            <div class="page-section page-right">
              <h2>Left Sidebar</h2>
              <p>
                Test SideBar Content
              </p>
            </div>
          </Lightning:layoutItem>
          <Lightning:layoutItem padding="around-small" size="6">
            <div class="page-section page-main">
              <h2>Main</h2>
              <p>
                Main Page Content
              </p>
            </div>
          </Lightning:layoutItem>
          <Lightning:layoutItem padding="around-small" size="3">
            <div class="page-section page-right">
              <h2>Right Sidebar</h2>
              <ul>
                <li><a href="#">Archive 1</a> </li>
                <li><a href="#">Archive 2</a> </li>
                <li><a href="#">Archive 3</a> </li>
                <li><a href="#">Archive 4</a> </li>
                <li><a href="#">Archive 5</a> </li>
              </ul>
            </div>
          </Lightning:layoutItem>
        </Lightning:layout>
      </Lightning:layoutItem>
      <Lightning:layoutItem flexibility="auto" padding="around-small" size="12">
        <div class="page-footer page-section">
          <h2>Footer</h2>
        </div>
      </Lightning:layoutItem>
    </Lightning:layout>
  </div>
</aura:application>
