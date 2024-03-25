

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: OrederFreezeResponse
        Used By: Finance
    */

    class OrederFreezeResponse: Codable {
        
        
        public var success: Bool?
        
        public var omsFreeze: Bool?
        
        public var source: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case omsFreeze = "oms_freeze"
            
            case source = "source"
            
        }

        public init(omsFreeze: Bool? = nil, source: String? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.omsFreeze = omsFreeze
            
            self.source = source
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    omsFreeze = try container.decode(Bool.self, forKey: .omsFreeze)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(omsFreeze, forKey: .omsFreeze)
            
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
        }
        
    }
}




