import Foundation


import Foundation
public extension PlatformClient {
    
    /*
        Model: ServiceabilityrErrorResponse
        Used By: Serviceability
    */

    class ServiceabilityrErrorResponse: Codable {
        
        
        public var type: String
        
        public var message: String
        
        public var value: String
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case message = "message"
            
            case value = "value"
            
        }

        public init(message: String, type: String, value: String) {
            
            self.type = type
            
            self.message = message
            
            self.value = value
            
        }

        public func duplicate() -> ServiceabilityrErrorResponse {
            let dict = self.dictionary!
            let copy = ServiceabilityrErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                message = try container.decode(String.self, forKey: .message)
                
            
            
            
                value = try container.decode(String.self, forKey: .value)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: ApplicationServiceabilityConfig
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfig: Codable {
        
        
        public var channelType: String
        
        public var serviceabilityType: String
        
        public var channelId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelType = "channel_type"
            
            case serviceabilityType = "serviceability_type"
            
            case channelId = "channel_id"
            
        }

        public init(channelId: String, channelType: String, serviceabilityType: String) {
            
            self.channelType = channelType
            
            self.serviceabilityType = serviceabilityType
            
            self.channelId = channelId
            
        }

        public func duplicate() -> ApplicationServiceabilityConfig {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfig(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
        }
        
    }
    
    /*
        Model: ApplicationServiceabilityConfigResponse
        Used By: Serviceability
    */

    class ApplicationServiceabilityConfigResponse: Codable {
        
        
        public var error: ServiceabilityrErrorResponse?
        
        public var data: ApplicationServiceabilityConfig?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case data = "data"
            
            case success = "success"
            
        }

        public init(data: ApplicationServiceabilityConfig?, error: ServiceabilityrErrorResponse?, success: Bool) {
            
            self.error = error
            
            self.data = data
            
            self.success = success
            
        }

        public func duplicate() -> ApplicationServiceabilityConfigResponse {
            let dict = self.dictionary!
            let copy = ApplicationServiceabilityConfigResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    error = try container.decode(ServiceabilityrErrorResponse.self, forKey: .error)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Request
        Used By: Serviceability
    */

    class EntityRegionView_Request: Codable {
        
        
        public var subType: [String]
        
        public var parentId: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case subType = "sub_type"
            
            case parentId = "parent_id"
            
        }

        public init(parentId: [String]?, subType: [String]) {
            
            self.subType = subType
            
            self.parentId = parentId
            
        }

        public func duplicate() -> EntityRegionView_Request {
            let dict = self.dictionary!
            let copy = EntityRegionView_Request(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subType = try container.decode([String].self, forKey: .subType)
                
            
            
            
                do {
                    parentId = try container.decode([String].self, forKey: .parentId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(parentId, forKey: .parentId)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Error
        Used By: Serviceability
    */

    class EntityRegionView_Error: Codable {
        
        
        public var type: String?
        
        public var message: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case message = "message"
            
            case value = "value"
            
        }

        public init(message: String?, type: String?, value: String?) {
            
            self.type = type
            
            self.message = message
            
            self.value = value
            
        }

        public func duplicate() -> EntityRegionView_Error {
            let dict = self.dictionary!
            let copy = EntityRegionView_Error(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Items
        Used By: Serviceability
    */

    class EntityRegionView_Items: Codable {
        
        
        public var subType: String
        
        public var uid: String
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case subType = "sub_type"
            
            case uid = "uid"
            
            case name = "name"
            
        }

        public init(name: String, subType: String, uid: String) {
            
            self.subType = subType
            
            self.uid = uid
            
            self.name = name
            
        }

        public func duplicate() -> EntityRegionView_Items {
            let dict = self.dictionary!
            let copy = EntityRegionView_Items(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                subType = try container.decode(String.self, forKey: .subType)
                
            
            
            
                uid = try container.decode(String.self, forKey: .uid)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(subType, forKey: .subType)
            
            
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_page
        Used By: Serviceability
    */

    class EntityRegionView_page: Codable {
        
        
        public var itemTotal: Int
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var type: String
        
        public var current: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.type = type
            
            self.current = current
            
        }

        public func duplicate() -> EntityRegionView_page {
            let dict = self.dictionary!
            let copy = EntityRegionView_page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
        }
        
    }
    
    /*
        Model: EntityRegionView_Response
        Used By: Serviceability
    */

    class EntityRegionView_Response: Codable {
        
        
        public var error: EntityRegionView_Error
        
        public var data: [EntityRegionView_Items]
        
        public var page: EntityRegionView_page
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case error = "error"
            
            case data = "data"
            
            case page = "page"
            
            case success = "success"
            
        }

        public init(data: [EntityRegionView_Items], error: EntityRegionView_Error, page: EntityRegionView_page, success: Bool) {
            
            self.error = error
            
            self.data = data
            
            self.page = page
            
            self.success = success
            
        }

        public func duplicate() -> EntityRegionView_Response {
            let dict = self.dictionary!
            let copy = EntityRegionView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                error = try container.decode(EntityRegionView_Error.self, forKey: .error)
                
            
            
            
                data = try container.decode([EntityRegionView_Items].self, forKey: .data)
                
            
            
            
                page = try container.decode(EntityRegionView_page.self, forKey: .page)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(error, forKey: .error)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: ListViewProduct
        Used By: Serviceability
    */

    class ListViewProduct: Codable {
        
        
        public var type: String
        
        public var count: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case count = "count"
            
        }

        public init(count: Int, type: String) {
            
            self.type = type
            
            self.count = count
            
        }

        public func duplicate() -> ListViewProduct {
            let dict = self.dictionary!
            let copy = ListViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                count = try container.decode(Int.self, forKey: .count)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
    
    /*
        Model: ListViewChannels
        Used By: Serviceability
    */

    class ListViewChannels: Codable {
        
        
        public var channelType: String
        
        public var channelId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelType = "channel_type"
            
            case channelId = "channel_id"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelType = channelType
            
            self.channelId = channelId
            
        }

        public func duplicate() -> ListViewChannels {
            let dict = self.dictionary!
            let copy = ListViewChannels(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
        }
        
    }
    
    /*
        Model: ListViewItems
        Used By: Serviceability
    */

    class ListViewItems: Codable {
        
        
        public var id: String
        
        public var pincodesCount: Int
        
        public var product: ListViewProduct
        
        public var channels: ListViewChannels
        
        public var companyId: Int
        
        public var isActive: Bool
        
        public var slug: String
        
        public var storesCount: Int
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case pincodesCount = "pincodes_count"
            
            case product = "product"
            
            case channels = "channels"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case slug = "slug"
            
            case storesCount = "stores_count"
            
            case name = "name"
            
        }

        public init(channels: ListViewChannels, companyId: Int, id: String, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int) {
            
            self.id = id
            
            self.pincodesCount = pincodesCount
            
            self.product = product
            
            self.channels = channels
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.slug = slug
            
            self.storesCount = storesCount
            
            self.name = name
            
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                id = try container.decode(String.self, forKey: .id)
                
            
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                product = try container.decode(ListViewProduct.self, forKey: .product)
                
            
            
            
                channels = try container.decode(ListViewChannels.self, forKey: .channels)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: ListViewSummary
        Used By: Serviceability
    */

    class ListViewSummary: Codable {
        
        
        public var totalActiveZones: Int
        
        public var totalPincodesServed: Int
        
        public var totalZones: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case totalActiveZones = "total_active_zones"
            
            case totalPincodesServed = "total_pincodes_served"
            
            case totalZones = "total_zones"
            
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            
            self.totalActiveZones = totalActiveZones
            
            self.totalPincodesServed = totalPincodesServed
            
            self.totalZones = totalZones
            
        }

        public func duplicate() -> ListViewSummary {
            let dict = self.dictionary!
            let copy = ListViewSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)
                
            
            
            
                totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)
                
            
            
            
                totalZones = try container.decode(Int.self, forKey: .totalZones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)
            
            
            
            
            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)
            
            
            
            
            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
            
            
        }
        
    }
    
    /*
        Model: ZoneDataItem
        Used By: Serviceability
    */

    class ZoneDataItem: Codable {
        
        
        public var itemTotal: Int
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var type: String
        
        public var current: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.type = type
            
            self.current = current
            
        }

        public func duplicate() -> ZoneDataItem {
            let dict = self.dictionary!
            let copy = ZoneDataItem(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
        }
        
    }
    
    /*
        Model: ListViewResponse
        Used By: Serviceability
    */

    class ListViewResponse: Codable {
        
        
        public var items: [ListViewItems]
        
        public var summary: [ListViewSummary]
        
        public var page: [ZoneDataItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case summary = "summary"
            
            case page = "page"
            
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            
            self.items = items
            
            self.summary = summary
            
            self.page = page
            
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([ListViewItems].self, forKey: .items)
                
            
            
            
                summary = try container.decode([ListViewSummary].self, forKey: .summary)
                
            
            
            
                page = try container.decode([ZoneDataItem].self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(summary, forKey: .summary)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_PageItems
        Used By: Serviceability
    */

    class CompanyStoreView_PageItems: Codable {
        
        
        public var itemTotal: Int
        
        public var hasNext: Bool
        
        public var size: Int
        
        public var type: String
        
        public var current: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case itemTotal = "item_total"
            
            case hasNext = "has_next"
            
            case size = "size"
            
            case type = "type"
            
            case current = "current"
            
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            
            self.itemTotal = itemTotal
            
            self.hasNext = hasNext
            
            self.size = size
            
            self.type = type
            
            self.current = current
            
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)
                
            
            
            
                hasNext = try container.decode(Bool.self, forKey: .hasNext)
                
            
            
            
                size = try container.decode(Int.self, forKey: .size)
                
            
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                current = try container.decode(Int.self, forKey: .current)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)
            
            
            
            
            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
            
            
            
            
            try? container.encodeIfPresent(size, forKey: .size)
            
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
        }
        
    }
    
    /*
        Model: CompanyStoreView_Response
        Used By: Serviceability
    */

    class CompanyStoreView_Response: Codable {
        
        
        public var items: [[String: Any]]?
        
        public var page: [CompanyStoreView_PageItems]
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case page = "page"
            
        }

        public init(items: [[String: Any]]?, page: [CompanyStoreView_PageItems]) {
            
            self.items = items
            
            self.page = page
            
        }

        public func duplicate() -> CompanyStoreView_Response {
            let dict = self.dictionary!
            let copy = CompanyStoreView_Response(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewProduct
        Used By: Serviceability
    */

    class GetZoneDataViewProduct: Codable {
        
        
        public var type: String
        
        public var count: Int
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case count = "count"
            
        }

        public init(count: Int, type: String) {
            
            self.type = type
            
            self.count = count
            
        }

        public func duplicate() -> GetZoneDataViewProduct {
            let dict = self.dictionary!
            let copy = GetZoneDataViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                type = try container.decode(String.self, forKey: .type)
                
            
            
            
                count = try container.decode(Int.self, forKey: .count)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewChannels
        Used By: Serviceability
    */

    class GetZoneDataViewChannels: Codable {
        
        
        public var channelType: String
        
        public var channelId: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channelType = "channel_type"
            
            case channelId = "channel_id"
            
        }

        public init(channelId: String, channelType: String) {
            
            self.channelType = channelType
            
            self.channelId = channelId
            
        }

        public func duplicate() -> GetZoneDataViewChannels {
            let dict = self.dictionary!
            let copy = GetZoneDataViewChannels(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channelType = try container.decode(String.self, forKey: .channelType)
                
            
            
            
                channelId = try container.decode(String.self, forKey: .channelId)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channelType, forKey: .channelType)
            
            
            
            
            try? container.encodeIfPresent(channelId, forKey: .channelId)
            
            
        }
        
    }
    
    /*
        Model: GetZoneDataViewItems
        Used By: Serviceability
    */

    class GetZoneDataViewItems: Codable {
        
        
        public var pincodesCount: Int
        
        public var product: GetZoneDataViewProduct
        
        public var channels: GetZoneDataViewChannels
        
        public var companyId: Int
        
        public var isActive: Bool
        
        public var zoneId: String
        
        public var slug: String
        
        public var storesCount: Int
        
        public var name: String
        

        public enum CodingKeys: String, CodingKey {
            
            case pincodesCount = "pincodes_count"
            
            case product = "product"
            
            case channels = "channels"
            
            case companyId = "company_id"
            
            case isActive = "is_active"
            
            case zoneId = "zone_id"
            
            case slug = "slug"
            
            case storesCount = "stores_count"
            
            case name = "name"
            
        }

        public init(channels: GetZoneDataViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: GetZoneDataViewProduct, slug: String, storesCount: Int, zoneId: String) {
            
            self.pincodesCount = pincodesCount
            
            self.product = product
            
            self.channels = channels
            
            self.companyId = companyId
            
            self.isActive = isActive
            
            self.zoneId = zoneId
            
            self.slug = slug
            
            self.storesCount = storesCount
            
            self.name = name
            
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)
                
            
            
            
                product = try container.decode(GetZoneDataViewProduct.self, forKey: .product)
                
            
            
            
                channels = try container.decode(GetZoneDataViewChannels.self, forKey: .channels)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                slug = try container.decode(String.self, forKey: .slug)
                
            
            
            
                storesCount = try container.decode(Int.self, forKey: .storesCount)
                
            
            
            
                name = try container.decode(String.self, forKey: .name)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)
            
            
            
            
            try? container.encodeIfPresent(product, forKey: .product)
            
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
            
            
            try? container.encodeIfPresent(storesCount, forKey: .storesCount)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
        }
        
    }
    
    /*
        Model: GetSingleZoneDataViewResponse
        Used By: Serviceability
    */

    class GetSingleZoneDataViewResponse: Codable {
        
        
        public var data: GetZoneDataViewItems
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
        }

        public init(data: GetZoneDataViewItems) {
            
            self.data = data
            
        }

        public func duplicate() -> GetSingleZoneDataViewResponse {
            let dict = self.dictionary!
            let copy = GetSingleZoneDataViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                data = try container.decode(GetZoneDataViewItems.self, forKey: .data)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
        }
        
    }
    
    /*
        Model: ZoneRequest
        Used By: Serviceability
    */

    class ZoneRequest: Codable {
        
        
        public var channels: [[String: Any]]
        
        public var data: [String: Any]
        
        public var identifier: String
        

        public enum CodingKeys: String, CodingKey {
            
            case channels = "channels"
            
            case data = "data"
            
            case identifier = "identifier"
            
        }

        public init(channels: [[String: Any]], data: [String: Any], identifier: String) {
            
            self.channels = channels
            
            self.data = data
            
            self.identifier = identifier
            
        }

        public func duplicate() -> ZoneRequest {
            let dict = self.dictionary!
            let copy = ZoneRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                channels = try container.decode([[String: Any]].self, forKey: .channels)
                
            
            
            
                data = try container.decode([String: Any].self, forKey: .data)
                
            
            
            
                identifier = try container.decode(String.self, forKey: .identifier)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(channels, forKey: .channels)
            
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(identifier, forKey: .identifier)
            
            
        }
        
    }
    
    /*
        Model: ZoneSuccessResponse
        Used By: Serviceability
    */

    class ZoneSuccessResponse: Codable {
        
        
        public var statusCode: Int
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case success = "success"
            
        }

        public init(statusCode: Int, success: Bool) {
            
            self.statusCode = statusCode
            
            self.success = success
            
        }

        public func duplicate() -> ZoneSuccessResponse {
            let dict = self.dictionary!
            let copy = ZoneSuccessResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: ZoneResponse
        Used By: Serviceability
    */

    class ZoneResponse: Codable {
        
        
        public var statusCode: Int
        
        public var zoneId: String
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statusCode = "status_code"
            
            case zoneId = "zone_id"
            
            case success = "success"
            
        }

        public init(statusCode: Int, success: Bool, zoneId: String) {
            
            self.statusCode = statusCode
            
            self.zoneId = zoneId
            
            self.success = success
            
        }

        public func duplicate() -> ZoneResponse {
            let dict = self.dictionary!
            let copy = ZoneResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statusCode = try container.decode(Int.self, forKey: .statusCode)
                
            
            
            
                zoneId = try container.decode(String.self, forKey: .zoneId)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusCode, forKey: .statusCode)
            
            
            
            
            try? container.encodeIfPresent(zoneId, forKey: .zoneId)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
    
    /*
        Model: GetZoneFromPincodeViewRequest
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewRequest: Codable {
        
        
        public var country: String
        
        public var pincode: String
        

        public enum CodingKeys: String, CodingKey {
            
            case country = "country"
            
            case pincode = "pincode"
            
        }

        public init(country: String, pincode: String) {
            
            self.country = country
            
            self.pincode = pincode
            
        }

        public func duplicate() -> GetZoneFromPincodeViewRequest {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                country = try container.decode(String.self, forKey: .country)
                
            
            
            
                pincode = try container.decode(String.self, forKey: .pincode)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(country, forKey: .country)
            
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
        }
        
    }
    
    /*
        Model: GetZoneFromPincodeViewResponse
        Used By: Serviceability
    */

    class GetZoneFromPincodeViewResponse: Codable {
        
        
        public var serviceabilityType: String
        
        public var zones: [String]
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case zones = "zones"
            
        }

        public init(serviceabilityType: String, zones: [String]) {
            
            self.serviceabilityType = serviceabilityType
            
            self.zones = zones
            
        }

        public func duplicate() -> GetZoneFromPincodeViewResponse {
            let dict = self.dictionary!
            let copy = GetZoneFromPincodeViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
            
            
            
                zones = try container.decode([String].self, forKey: .zones)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(zones, forKey: .zones)
            
            
        }
        
    }
    
}
