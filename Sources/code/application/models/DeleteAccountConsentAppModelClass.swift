

import Foundation
public extension ApplicationClient {
    /*
        Model: DeleteAccountConsent
        Used By: User
    */
    class DeleteAccountConsent: Codable {
        
        public var consentText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case consentText = "consent_text"
            
        }

        public init(consentText: String? = nil) {
            
            self.consentText = consentText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                consentText = try container.decode(String.self, forKey: .consentText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(consentText, forKey: .consentText)
            
            
        }
        
    }
}
