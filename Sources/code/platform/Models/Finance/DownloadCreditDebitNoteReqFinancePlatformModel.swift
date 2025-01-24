

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: DownloadCreditDebitNoteReq
        Used By: Finance
    */

    class DownloadCreditDebitNoteReq: Codable {
        
        
        public var data: DownloadCreditDebitNote?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: DownloadCreditDebitNote? = nil) {
            
            self.data = data
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode(DownloadCreditDebitNote.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
}




