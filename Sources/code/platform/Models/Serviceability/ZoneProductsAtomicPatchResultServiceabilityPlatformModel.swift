

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchResult
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchResult: Codable {
        
        
        public var items: [ZoneProductsAtomicPatchResultItem]
        
        public var summary: ZoneProductsAtomicPatchSummary
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case summary = "summary"
            
        }

        public init(items: [ZoneProductsAtomicPatchResultItem], summary: ZoneProductsAtomicPatchSummary) {
            
            self.items = items
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ZoneProductsAtomicPatchResultItem].self, forKey: .items)
                
            
            
            
                summary = try container.decode(ZoneProductsAtomicPatchSummary.self, forKey: .summary)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchResult
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchResult: Codable {
        
        
        public var items: [ZoneProductsAtomicPatchResultItem]
        
        public var summary: ZoneProductsAtomicPatchSummary
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case summary = "summary"
            
        }

        public init(items: [ZoneProductsAtomicPatchResultItem], summary: ZoneProductsAtomicPatchSummary) {
            
            self.items = items
            
            self.summary = summary
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ZoneProductsAtomicPatchResultItem].self, forKey: .items)
                
            
            
            
                summary = try container.decode(ZoneProductsAtomicPatchSummary.self, forKey: .summary)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
        }
        
    }
}


