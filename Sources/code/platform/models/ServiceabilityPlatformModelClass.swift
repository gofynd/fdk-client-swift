import Foundation

import Foundation
public extension PlatformClient {
    /*
         Model: ServiceabilityrErrorResponse
         Used By: Serviceability
     */

    class ServiceabilityrErrorResponse: Codable {
        public var value: String

        public var message: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case value

            case message

            case type
        }

        public init(message: String, type: String, value: String) {
            self.value = value

            self.message = message

            self.type = type
        }

        public func duplicate() -> ServiceabilityrErrorResponse {
            let dict = self.dictionary!
            let copy = ServiceabilityrErrorResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            message = try container.decode(String.self, forKey: .message)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)
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
            case error

            case data

            case success
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
            } catch {}

            do {
                data = try container.decode(ApplicationServiceabilityConfig.self, forKey: .data)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
        public var parentId: [String]?

        public var subType: [String]

        public enum CodingKeys: String, CodingKey {
            case parentId = "parent_id"

            case subType = "sub_type"
        }

        public init(parentId: [String]?, subType: [String]) {
            self.parentId = parentId

            self.subType = subType
        }

        public func duplicate() -> EntityRegionView_Request {
            let dict = self.dictionary!
            let copy = EntityRegionView_Request(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                parentId = try container.decode([String].self, forKey: .parentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            subType = try container.decode([String].self, forKey: .subType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(parentId, forKey: .parentId)

            try? container.encodeIfPresent(subType, forKey: .subType)
        }
    }

    /*
         Model: EntityRegionView_Error
         Used By: Serviceability
     */

    class EntityRegionView_Error: Codable {
        public var value: String?

        public var message: String?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case value

            case message

            case type
        }

        public init(message: String?, type: String?, value: String?) {
            self.value = value

            self.message = message

            self.type = type
        }

        public func duplicate() -> EntityRegionView_Error {
            let dict = self.dictionary!
            let copy = EntityRegionView_Error(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                value = try container.decode(String.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(type, forKey: .type)
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

            case uid

            case name
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
        public var type: String

        public var hasNext: Bool

        public var size: Int

        public var itemTotal: Int

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasNext = "has_next"

            case size

            case itemTotal = "item_total"

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.hasNext = hasNext

            self.size = size

            self.itemTotal = itemTotal

            self.current = current
        }

        public func duplicate() -> EntityRegionView_page {
            let dict = self.dictionary!
            let copy = EntityRegionView_page(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

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
            case error

            case data

            case page

            case success
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
         Model: ListViewProduct
         Used By: Serviceability
     */

    class ListViewProduct: Codable {
        public var count: Int

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case count

            case type
        }

        public init(count: Int, type: String) {
            self.count = count

            self.type = type
        }

        public func duplicate() -> ListViewProduct {
            let dict = self.dictionary!
            let copy = ListViewProduct(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            count = try container.decode(Int.self, forKey: .count)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: ListViewItems
         Used By: Serviceability
     */

    class ListViewItems: Codable {
        public var zoneId: String

        public var storesCount: Int

        public var channels: ListViewChannels

        public var pincodesCount: Int

        public var slug: String

        public var product: ListViewProduct

        public var companyId: Int

        public var isActive: Bool

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case channels

            case pincodesCount = "pincodes_count"

            case slug

            case product

            case companyId = "company_id"

            case isActive = "is_active"

            case name
        }

        public init(channels: ListViewChannels, companyId: Int, isActive: Bool, name: String, pincodesCount: Int, product: ListViewProduct, slug: String, storesCount: Int, zoneId: String) {
            self.zoneId = zoneId

            self.storesCount = storesCount

            self.channels = channels

            self.pincodesCount = pincodesCount

            self.slug = slug

            self.product = product

            self.companyId = companyId

            self.isActive = isActive

            self.name = name
        }

        public func duplicate() -> ListViewItems {
            let dict = self.dictionary!
            let copy = ListViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            channels = try container.decode(ListViewChannels.self, forKey: .channels)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ListViewProduct.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ZoneDataItem
         Used By: Serviceability
     */

    class ZoneDataItem: Codable {
        public var hasNext: Bool

        public var size: Int

        public var itemTotal: Int

        public var type: String

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case hasNext = "has_next"

            case size

            case itemTotal = "item_total"

            case type

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.hasNext = hasNext

            self.size = size

            self.itemTotal = itemTotal

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

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            type = try container.decode(String.self, forKey: .type)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(current, forKey: .current)
        }
    }

    /*
         Model: ListViewSummary
         Used By: Serviceability
     */

    class ListViewSummary: Codable {
        public var totalPincodesServed: Int

        public var totalActiveZones: Int

        public var totalZones: Int

        public enum CodingKeys: String, CodingKey {
            case totalPincodesServed = "total_pincodes_served"

            case totalActiveZones = "total_active_zones"

            case totalZones = "total_zones"
        }

        public init(totalActiveZones: Int, totalPincodesServed: Int, totalZones: Int) {
            self.totalPincodesServed = totalPincodesServed

            self.totalActiveZones = totalActiveZones

            self.totalZones = totalZones
        }

        public func duplicate() -> ListViewSummary {
            let dict = self.dictionary!
            let copy = ListViewSummary(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            totalPincodesServed = try container.decode(Int.self, forKey: .totalPincodesServed)

            totalActiveZones = try container.decode(Int.self, forKey: .totalActiveZones)

            totalZones = try container.decode(Int.self, forKey: .totalZones)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalPincodesServed, forKey: .totalPincodesServed)

            try? container.encodeIfPresent(totalActiveZones, forKey: .totalActiveZones)

            try? container.encodeIfPresent(totalZones, forKey: .totalZones)
        }
    }

    /*
         Model: ListViewResponse
         Used By: Serviceability
     */

    class ListViewResponse: Codable {
        public var items: [ListViewItems]

        public var page: [ZoneDataItem]

        public var summary: [ListViewSummary]

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case summary
        }

        public init(items: [ListViewItems], page: [ZoneDataItem], summary: [ListViewSummary]) {
            self.items = items

            self.page = page

            self.summary = summary
        }

        public func duplicate() -> ListViewResponse {
            let dict = self.dictionary!
            let copy = ListViewResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([ListViewItems].self, forKey: .items)

            page = try container.decode([ZoneDataItem].self, forKey: .page)

            summary = try container.decode([ListViewSummary].self, forKey: .summary)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(summary, forKey: .summary)
        }
    }

    /*
         Model: CompanyStoreView_PageItems
         Used By: Serviceability
     */

    class CompanyStoreView_PageItems: Codable {
        public var type: String

        public var hasNext: Bool

        public var size: Int

        public var itemTotal: Int

        public var current: Int

        public enum CodingKeys: String, CodingKey {
            case type

            case hasNext = "has_next"

            case size

            case itemTotal = "item_total"

            case current
        }

        public init(current: Int, hasNext: Bool, itemTotal: Int, size: Int, type: String) {
            self.type = type

            self.hasNext = hasNext

            self.size = size

            self.itemTotal = itemTotal

            self.current = current
        }

        public func duplicate() -> CompanyStoreView_PageItems {
            let dict = self.dictionary!
            let copy = CompanyStoreView_PageItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            hasNext = try container.decode(Bool.self, forKey: .hasNext)

            size = try container.decode(Int.self, forKey: .size)

            itemTotal = try container.decode(Int.self, forKey: .itemTotal)

            current = try container.decode(Int.self, forKey: .current)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

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
            case items

            case page
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
            } catch {}

            page = try container.decode([CompanyStoreView_PageItems].self, forKey: .page)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)
        }
    }

    /*
         Model: ZoneMappingType
         Used By: Serviceability
     */

    class ZoneMappingType: Codable {
        public var country: String

        public var pincode: [String]?

        public var state: [String]?

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode

            case state
        }

        public init(country: String, pincode: [String]?, state: [String]?) {
            self.country = country

            self.pincode = pincode

            self.state = state
        }

        public func duplicate() -> ZoneMappingType {
            let dict = self.dictionary!
            let copy = ZoneMappingType(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            do {
                pincode = try container.decode([String].self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode([String].self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)
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
         Model: ZoneProductTypes
         Used By: Serviceability
     */

    class ZoneProductTypes: Codable {
        public var tags: [String]

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case tags

            case type
        }

        public init(tags: [String], type: String) {
            self.tags = tags

            self.type = type
        }

        public func duplicate() -> ZoneProductTypes {
            let dict = self.dictionary!
            let copy = ZoneProductTypes(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            tags = try container.decode([String].self, forKey: .tags)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }

    /*
         Model: UpdateZoneData
         Used By: Serviceability
     */

    class UpdateZoneData: Codable {
        public var zoneId: String

        public var mapping: [ZoneMappingType]

        public var channels: [GetZoneDataViewChannels]

        public var regionType: String

        public var storeIds: [Int]

        public var slug: String

        public var product: ZoneProductTypes

        public var companyId: Int

        public var isActive: Bool

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case mapping

            case channels

            case regionType = "region_type"

            case storeIds = "store_ids"

            case slug

            case product

            case companyId = "company_id"

            case isActive = "is_active"

            case name
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int], zoneId: String) {
            self.zoneId = zoneId

            self.mapping = mapping

            self.channels = channels

            self.regionType = regionType

            self.storeIds = storeIds

            self.slug = slug

            self.product = product

            self.companyId = companyId

            self.isActive = isActive

            self.name = name
        }

        public func duplicate() -> UpdateZoneData {
            let dict = self.dictionary!
            let copy = UpdateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            regionType = try container.decode(String.self, forKey: .regionType)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ZoneUpdateRequest
         Used By: Serviceability
     */

    class ZoneUpdateRequest: Codable {
        public var identifier: String

        public var data: UpdateZoneData

        public enum CodingKeys: String, CodingKey {
            case identifier

            case data
        }

        public init(data: UpdateZoneData, identifier: String) {
            self.identifier = identifier

            self.data = data
        }

        public func duplicate() -> ZoneUpdateRequest {
            let dict = self.dictionary!
            let copy = ZoneUpdateRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            data = try container.decode(UpdateZoneData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(data, forKey: .data)
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

            case success
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
         Model: GetZoneDataViewItems
         Used By: Serviceability
     */

    class GetZoneDataViewItems: Codable {
        public var zoneId: String

        public var storesCount: Int

        public var mapping: [ZoneMappingType]

        public var channels: [GetZoneDataViewChannels]

        public var regionType: String

        public var storeIds: [Int]

        public var pincodesCount: Int

        public var slug: String

        public var product: ZoneProductTypes

        public var companyId: Int

        public var isActive: Bool

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case zoneId = "zone_id"

            case storesCount = "stores_count"

            case mapping

            case channels

            case regionType = "region_type"

            case storeIds = "store_ids"

            case pincodesCount = "pincodes_count"

            case slug

            case product

            case companyId = "company_id"

            case isActive = "is_active"

            case name
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, pincodesCount: Int, product: ZoneProductTypes, regionType: String, slug: String, storesCount: Int, storeIds: [Int], zoneId: String) {
            self.zoneId = zoneId

            self.storesCount = storesCount

            self.mapping = mapping

            self.channels = channels

            self.regionType = regionType

            self.storeIds = storeIds

            self.pincodesCount = pincodesCount

            self.slug = slug

            self.product = product

            self.companyId = companyId

            self.isActive = isActive

            self.name = name
        }

        public func duplicate() -> GetZoneDataViewItems {
            let dict = self.dictionary!
            let copy = GetZoneDataViewItems(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            zoneId = try container.decode(String.self, forKey: .zoneId)

            storesCount = try container.decode(Int.self, forKey: .storesCount)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            regionType = try container.decode(String.self, forKey: .regionType)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            pincodesCount = try container.decode(Int.self, forKey: .pincodesCount)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(zoneId, forKey: .zoneId)

            try? container.encodeIfPresent(storesCount, forKey: .storesCount)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(pincodesCount, forKey: .pincodesCount)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

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
            case data
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
         Model: CreateZoneData
         Used By: Serviceability
     */

    class CreateZoneData: Codable {
        public var mapping: [ZoneMappingType]

        public var regionType: String

        public var storeIds: [Int]

        public var slug: String

        public var product: ZoneProductTypes

        public var companyId: Int

        public var channels: [GetZoneDataViewChannels]

        public var isActive: Bool

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case mapping

            case regionType = "region_type"

            case storeIds = "store_ids"

            case slug

            case product

            case companyId = "company_id"

            case channels

            case isActive = "is_active"

            case name
        }

        public init(channels: [GetZoneDataViewChannels], companyId: Int, isActive: Bool, mapping: [ZoneMappingType], name: String, product: ZoneProductTypes, regionType: String, slug: String, storeIds: [Int]) {
            self.mapping = mapping

            self.regionType = regionType

            self.storeIds = storeIds

            self.slug = slug

            self.product = product

            self.companyId = companyId

            self.channels = channels

            self.isActive = isActive

            self.name = name
        }

        public func duplicate() -> CreateZoneData {
            let dict = self.dictionary!
            let copy = CreateZoneData(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            mapping = try container.decode([ZoneMappingType].self, forKey: .mapping)

            regionType = try container.decode(String.self, forKey: .regionType)

            storeIds = try container.decode([Int].self, forKey: .storeIds)

            slug = try container.decode(String.self, forKey: .slug)

            product = try container.decode(ZoneProductTypes.self, forKey: .product)

            companyId = try container.decode(Int.self, forKey: .companyId)

            channels = try container.decode([GetZoneDataViewChannels].self, forKey: .channels)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(mapping, forKey: .mapping)

            try? container.encodeIfPresent(regionType, forKey: .regionType)

            try? container.encodeIfPresent(storeIds, forKey: .storeIds)

            try? container.encodeIfPresent(slug, forKey: .slug)

            try? container.encodeIfPresent(product, forKey: .product)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(channels, forKey: .channels)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: ZoneRequest
         Used By: Serviceability
     */

    class ZoneRequest: Codable {
        public var identifier: String

        public var data: CreateZoneData

        public enum CodingKeys: String, CodingKey {
            case identifier

            case data
        }

        public init(data: CreateZoneData, identifier: String) {
            self.identifier = identifier

            self.data = data
        }

        public func duplicate() -> ZoneRequest {
            let dict = self.dictionary!
            let copy = ZoneRequest(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            identifier = try container.decode(String.self, forKey: .identifier)

            data = try container.decode(CreateZoneData.self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(data, forKey: .data)
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

            case success
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
            case country

            case pincode
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

            case zones
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
