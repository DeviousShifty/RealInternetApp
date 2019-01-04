import UIKit



public class InternetMasterViewController: UITableViewController
    
{
    
    
    
    private weak var internetDetail : InternetDetailViewController? = nil
    
    private lazy var InternetTopics : [String] = [String]( )
    
    private lazy var addresses : [String] = [String]( )
    
    
    
    private func setupDetailContents( ) -> Void
        
    {
        
        InternetTopics = [
            
            "Internet Definitions !!",
            
            "Standard Search Engine",
            
            "AP CSP",
            
            "Canyons District",
            
            "CTEC",
            
            "Social Media"
            
        ]
        
        
        
        addresses = [
            
            "Internet Definitions",
            
            "Standard Search Engine",
            
            "AP CSP",
            
            "Canyons District",
            
            "Ctec",
            
            "Social Media"
            
        ]
        
        
        
        if let splitView = splitViewController
            
        {
            
            let currentControllers = splitView.viewControllers
            
            internetDetail = currentControllers[0] as? InternetDetailViewController
            
        }
        
    }
    
    
    
    //This method only happens once with the split view
    
    public override func viewDidLoad( )
        
    {
        
        super.viewDidLoad( )
        
        
        
        setupDetailContents( )
        
        self.clearsSelectionOnViewWillAppear = false
        
        
        
        if let split = splitViewController
            
        {
            
            let controllers = split.viewControllers
            
            internetDetail = (controllers[controllers.count-1] as! UINavigationController).topViewController as? InternetDetailViewController
            
        }
        
    }
    
    
    
    /**
     
     This method will execute multiple times aka every time the menu (master) in displayed
     
     */
    
    
    
    
    
    public override func viewWillAppear(_ animated: Bool) -> Void
        
    {
        
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        
        
        
        super.viewWillAppear(animated)
        
        
        
    }
    
    
    
    // MARK: - Table View
    
    
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
        
    {
        
        return addresses.count
        
    }
    
    
    
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> UITableViewCell
        
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let rowText = InternetTopics[indexPath.row]
        cell.textLabel!.text = rowText
        return cell;
        
        internetDetail?.detailAddress = addresses[indexPath.row];
        
        internetDetail?.detailTitle = InternetTopics[indexPath.row]
        
        if (internetDetail != nil)
            
        {
            
            splitViewController?.showDetailViewController(internetDetail!, sender: nil)
            
        }
        
    }
    
}
