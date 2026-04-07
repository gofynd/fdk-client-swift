

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityPagination
        Used By: Serviceability
    */

    class StorePolygonServiceabilityPagination: Codable {
        
        
        public var pageSize: Int
        
        public var pageNumber: Int
        
        public var hasNext: Bool
        
        public var totalRecords: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pageSize = "page_size"
            
            case pageNumber = "page_number"
            
            case hasNext = "has_next"
            
            case totalRecords = "total_records"
            
        }

        public init(hasNext: Bool, pageNumber: Int, pageSize: Int, totalRecords: Int) {
            
            self.pageSize = pageSize
            
            self.pageNumber = pageNumber
            
            self.hasNext = hasNext
            
            self.totalRecords = totalRecords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pageSize = try container.decode(Int.self, forKey: .pageSize)
                
            
            
            
                pageNumber = try container.decode(Int.self, forKey: .pageNumber)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(pageNumber, forKey: .pageNumber)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: StorePolygonServiceabilityPagination
        Used By: Serviceability
    */

    class StorePolygonServiceabilityPagination: Codable {
        
        
        public var pageSize: Int
        
        public var pageNumber: Int
        
        public var hasNext: Bool
        
        public var totalRecords: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case pageSize = "page_size"
            
            case pageNumber = "page_number"
            
            case hasNext = "has_next"
            
            case totalRecords = "total_records"
            
        }

        public init(hasNext: Bool, pageNumber: Int, pageSize: Int, totalRecords: Int) {
            
            self.pageSize = pageSize
            
            self.pageNumber = pageNumber
            
            self.hasNext = hasNext
            
            self.totalRecords = totalRecords
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pageSize = try container.decode(Int.self, forKey: .pageSize)
                
            
            
            
                pageNumber = try container.decode(Int.self, forKey: .pageNumber)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                totalRecords = try container.decode(Int.self, forKey: .totalRecords)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pageSize, forKey: .pageSize)
            
            
            
            
            try? container.encodeIfPresent(pageNumber, forKey: .pageNumber)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(totalRecords, forKey: .totalRecords)
            
            
        }
        
    }
}


