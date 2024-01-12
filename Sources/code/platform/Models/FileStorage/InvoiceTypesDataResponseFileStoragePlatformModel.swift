

import Foundation


public extension PlatformClient.FileStorage {
    /*
        Model: InvoiceTypesDataResponse
        Used By: FileStorage
    */

    class InvoiceTypesDataResponse: Codable {
        
        
        public var status: Bool?
        
        public var id: String
        
        public var pdfTypeId: Int
        
        public var name: String
        
        public var format: [String]
        
        public var v: Int
        
        public var visibility: Bool
        
        public var countryCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case id = "_id"
            
            case pdfTypeId = "pdf_type_id"
            
            case name = "name"
            
            case format = "format"
            
            case v = "__v"
            
            case visibility = "visibility"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String, format: [String], name: String, pdfTypeId: Int, status: Bool? = nil, visibility: Bool, id: String, v: Int) {
            
            self.status = status
            
            self.id = id
            
            self.pdfTypeId = pdfTypeId
            
            self.name = name
            
            self.format = format
            
            self.v = v
            
            self.visibility = visibility
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                format = try container.decode([String].self, forKey: .format)
                
            
            
            
                v = try container.decode(Int.self, forKey: .v)
                
            
            
            
                visibility = try container.decode(Bool.self, forKey: .visibility)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.FileStorage {
    /*
        Model: InvoiceTypesDataResponse
        Used By: FileStorage
    */

    class InvoiceTypesDataResponse: Codable {
        
        
        public var status: Bool?
        
        public var id: String
        
        public var pdfTypeId: Int
        
        public var name: String
        
        public var format: [String]
        
        public var v: Int
        
        public var visibility: Bool
        
        public var countryCode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
            case id = "_id"
            
            case pdfTypeId = "pdf_type_id"
            
            case name = "name"
            
            case format = "format"
            
            case v = "__v"
            
            case visibility = "visibility"
            
            case countryCode = "country_code"
            
        }

        public init(countryCode: String, format: [String], name: String, pdfTypeId: Int, status: Bool? = nil, visibility: Bool, id: String, v: Int) {
            
            self.status = status
            
            self.id = id
            
            self.pdfTypeId = pdfTypeId
            
            self.name = name
            
            self.format = format
            
            self.v = v
            
            self.visibility = visibility
            
            self.countryCode = countryCode
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                pdfTypeId = try container.decode(Int.self, forKey: .pdfTypeId)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
            
                format = try container.decode([String].self, forKey: .format)
                
            
            
            
                v = try container.decode(Int.self, forKey: .v)
                
            
            
            
                visibility = try container.decode(Bool.self, forKey: .visibility)
                
            
            
            
                countryCode = try container.decode(String.self, forKey: .countryCode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pdfTypeId, forKey: .pdfTypeId)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(format, forKey: .format)
            
            
            
            
            try? container.encodeIfPresent(v, forKey: .v)
            
            
            
            
            try? container.encodeIfPresent(visibility, forKey: .visibility)
            
            
            
            
            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
            
            
        }
        
    }
}


