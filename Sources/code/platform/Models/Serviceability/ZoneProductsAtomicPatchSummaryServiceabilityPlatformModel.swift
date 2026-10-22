

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchSummary
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchSummary: Codable {
        
        
        public var total: Int
        
        public var success: Int
        
        public var failed: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case success = "success"
            
            case failed = "failed"
            
        }

        public init(failed: Int, success: Int, total: Int) {
            
            self.total = total
            
            self.success = success
            
            self.failed = failed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                success = try container.decode(Int.self, forKey: .success)
                
            
            
            
                failed = try container.decode(Int.self, forKey: .failed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneProductsAtomicPatchSummary
        Used By: Serviceability
    */

    class ZoneProductsAtomicPatchSummary: Codable {
        
        
        public var total: Int
        
        public var success: Int
        
        public var failed: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case total = "total"
            
            case success = "success"
            
            case failed = "failed"
            
        }

        public init(failed: Int, success: Int, total: Int) {
            
            self.total = total
            
            self.success = success
            
            self.failed = failed
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                total = try container.decode(Int.self, forKey: .total)
                
            
            
            
                success = try container.decode(Int.self, forKey: .success)
                
            
            
            
                failed = try container.decode(Int.self, forKey: .failed)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(total, forKey: .total)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(failed, forKey: .failed)
            
            
        }
        
    }
}


