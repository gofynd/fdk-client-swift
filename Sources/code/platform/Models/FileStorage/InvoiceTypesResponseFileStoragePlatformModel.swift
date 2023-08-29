

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: InvoiceTypesResponse
        Used By: FileStorage
    */

    class InvoiceTypesResponse: Codable {
        
        
        public var id: String
        
        public var pdfTypeId: Int
        
        public var name: String
        
        public var format: [String]
        
        public var v: Int
        
        public var visibility: Bool
        
        public var schema: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case pdfTypeId = "pdf_type_id"
            
            case name = "name"
            
            case format = "format"
            
            case v = "__v"
            
            case visibility = "visibility"
            
            case schema = "schema"
            
        }

        public init(format: [String], name: String, pdfTypeId: Int, schema: [String: Any], visibility: Bool, id: String, v: Int) {
            
            self.id = id
            
            self.pdfTypeId = pdfTypeId
            
            self.name = name
            
            self.format = format
            
            self.v = v
            
            self.visibility = visibility
            
            self.schema = schema
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                format = try container.decode([String].self, forKey: .format)
                
            
            
            
                v = try container.decode(Int.self, forKey: .v)
                
            
            
            
                visibility = try container.decode(Bool.self, forKey: .visibility)
                
            
            
            
                schema = try container.decode([String: Any].self, forKey: .schema)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: InvoiceTypesResponse
        Used By: FileStorage
    */

    class InvoiceTypesResponse: Codable {
        
        
        public var id: String
        
        public var pdfTypeId: Int
        
        public var name: String
        
        public var format: [String]
        
        public var v: Int
        
        public var visibility: Bool
        
        public var schema: [String: Any]
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case pdfTypeId = "pdf_type_id"
            
            case name = "name"
            
            case format = "format"
            
            case v = "__v"
            
            case visibility = "visibility"
            
            case schema = "schema"
            
        }

        public init(format: [String], name: String, pdfTypeId: Int, schema: [String: Any], visibility: Bool, id: String, v: Int) {
            
            self.id = id
            
            self.pdfTypeId = pdfTypeId
            
            self.name = name
            
            self.format = format
            
            self.v = v
            
            self.visibility = visibility
            
            self.schema = schema
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                format = try container.decode([String].self, forKey: .format)
                
            
            
            
                v = try container.decode(Int.self, forKey: .v)
                
            
            
            
                visibility = try container.decode(Bool.self, forKey: .visibility)
                
            
            
            
                schema = try container.decode([String: Any].self, forKey: .schema)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
            
            
            try? container.encodeIfPresent(schema, forKey: .schema)
            
            
        }
        
    }
}


