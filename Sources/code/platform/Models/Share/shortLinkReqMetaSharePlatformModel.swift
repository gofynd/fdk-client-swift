

import Foundation




public extension PlatformClient.ApplicationClient.Share {
    /*
        Model: shortLinkReqMeta
        Used By: Share
    */

    class shortLinkReqMeta: Codable {
        
        
        public var forSms: Bool?
        
        public var smsHeader: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case forSms = "for_sms"
            
            case smsHeader = "sms_header"
            
        }

        public init(forSms: Bool? = nil, smsHeader: String? = nil) {
            
            self.forSms = forSms
            
            self.smsHeader = smsHeader
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    forSms = try container.decode(Bool.self, forKey: .forSms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    smsHeader = try container.decode(String.self, forKey: .smsHeader)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(forSms, forKey: .forSms)
            
            
            
            
            try? container.encodeIfPresent(smsHeader, forKey: .smsHeader)
            
            
        }
        
    }
}


