
import UIKit
import WebKit

public class InternetDetailViewController: UIViewController
    
{
    
    
    
    @IBOutlet weak var webViewer: WKWebView!
    
    @IBOutlet weak var screenTitle: UILabel!
    
    
    
    var detailTitle : String?
        
        {
        
        didSet
            
        {
            
            updateView( )
            
        }
        
    }
    
    
    
    var detailAddress : String?
        
        {
        
        didSet
            
        {
            
            updateView( )
            
        }
        
    }
    
    
    
    private func updateView( ) -> Void
        
    {
        
        if (detailTitle != nil && screenTitle != nil && webViewer != nil)
            
        {
            
            if (detailTitle?.range(of: "Definitions", options: .caseInsensitive) != nil)
                
            {
                
                loadPDF( )
                
            }
                
            else
                
            {
                
                if (detailAddress != nil)
                    
                {
                    
                    loadURL(webAddress: detailAddress!)
                    
                }
                
            }
            
            screenTitle?.text = detailTitle
            
        }
        
    }
    
    
    
    public override func viewDidLoad( ) -> Void
        
    {
        
        super.viewDidLoad( )
        
        
        
        updateView( )
        
    }
    
    
    
    public func loadURL(webAddress: String) -> Void
        
    {
        
        let currentURL = URL(string: webAddress)
        
        let currentWebRequest = URLRequest(url: currentURL!)
        
        webViewer.load(currentWebRequest)
        
    }
    
    
    
    private func loadPDF( ) -> Void
        
    {
        
        if let contentPDF = Bundle.main.url(forResource: "PDF Name", withExtension: "pdf", subdirectory: nil, localization: nil)
            
        {
            
            let requestPDF = NSURLRequest(url: contentPDF)
            
            webViewer.load(requestPDF as URLRequest)
            
        }
        
    }
    
}
