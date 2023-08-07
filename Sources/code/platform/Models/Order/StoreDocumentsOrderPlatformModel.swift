

import Foundation


public extension PlatformClient.Order {
    /*
        Model: StoreDocuments
        Used By: Order
    */

    class StoreDocuments: Codable {
        
        
        public var gst: Document?
        

        public enum CodingKeys: String, CodingKey {
            
            case gst = "gst"
            
        }

        public init(gst: Document? = nil) {
            
            self.gst = gst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gst = try container.decode(Document.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: StoreDocuments
        Used By: Order
    */

    class StoreDocuments: Codable {
        
        
        public var gst: Document?
        

        public enum CodingKeys: String, CodingKey {
            
            case gst = "gst"
            
        }

        public init(gst: Document? = nil) {
            
            self.gst = gst
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    gst = try container.decode(Document.self, forKey: .gst)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(gst, forKey: .gst)
            
            
        }
        
    }
}


