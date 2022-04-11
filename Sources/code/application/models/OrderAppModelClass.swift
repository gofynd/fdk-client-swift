import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderById
         Used By: Order
     */
    class OrderById: Codable {
        public var order: OrderSchema

        public enum CodingKeys: String, CodingKey {
            case order
        }

        public init(order: OrderSchema) {
            self.order = order
        }

        public func duplicate() -> OrderById {
            let dict = self.dictionary!
            let copy = OrderById(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            order = try container.decode(OrderSchema.self, forKey: .order)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }

    /*
         Model: OrderList
         Used By: Order
     */
    class OrderList: Codable {
        public var items: [OrderSchema]

        public var page: OrderPage

        public var filters: OrderFilters

        public enum CodingKeys: String, CodingKey {
            case items

            case page

            case filters
        }

        public init(filters: OrderFilters, items: [OrderSchema], page: OrderPage) {
            self.items = items

            self.page = page

            self.filters = filters
        }

        public func duplicate() -> OrderList {
            let dict = self.dictionary!
            let copy = OrderList(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            items = try container.decode([OrderSchema].self, forKey: .items)

            page = try container.decode(OrderPage.self, forKey: .page)

            filters = try container.decode(OrderFilters.self, forKey: .filters)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(items, forKey: .items)

            try? container.encodeIfPresent(page, forKey: .page)

            try? container.encodeIfPresent(filters, forKey: .filters)
        }
    }

    /*
         Model: OrderPage
         Used By: Order
     */
    class OrderPage: Codable {
        public var itemTotal: Int?

        public var type: String?

        public var size: Int?

        public var current: Int?

        public var hasNext: Bool?

        public enum CodingKeys: String, CodingKey {
            case itemTotal = "item_total"

            case type

            case size

            case current

            case hasNext = "has_next"
        }

        public init(current: Int?, hasNext: Bool?, itemTotal: Int?, size: Int?, type: String?) {
            self.itemTotal = itemTotal

            self.type = type

            self.size = size

            self.current = current

            self.hasNext = hasNext
        }

        public func duplicate() -> OrderPage {
            let dict = self.dictionary!
            let copy = OrderPage(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemTotal = try container.decode(Int.self, forKey: .itemTotal)

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

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                current = try container.decode(Int.self, forKey: .current)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hasNext = try container.decode(Bool.self, forKey: .hasNext)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemTotal, forKey: .itemTotal)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(current, forKey: .current)

            try? container.encodeIfPresent(hasNext, forKey: .hasNext)
        }
    }

    /*
         Model: OrderFilters
         Used By: Order
     */
    class OrderFilters: Codable {
        public var statuses: [OrderStatuses]?

        public enum CodingKeys: String, CodingKey {
            case statuses
        }

        public init(statuses: [OrderStatuses]?) {
            self.statuses = statuses
        }

        public func duplicate() -> OrderFilters {
            let dict = self.dictionary!
            let copy = OrderFilters(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                statuses = try container.decode([OrderStatuses].self, forKey: .statuses)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statuses, forKey: .statuses)
        }
    }

    /*
         Model: OrderStatuses
         Used By: Order
     */
    class OrderStatuses: Codable {
        public var display: String?

        public var value: Int?

        public var isSelected: Bool?

        public enum CodingKeys: String, CodingKey {
            case display

            case value

            case isSelected = "is_selected"
        }

        public init(display: String?, isSelected: Bool?, value: Int?) {
            self.display = display

            self.value = value

            self.isSelected = isSelected
        }

        public func duplicate() -> OrderStatuses {
            let dict = self.dictionary!
            let copy = OrderStatuses(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Int.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isSelected = try container.decode(Bool.self, forKey: .isSelected)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(isSelected, forKey: .isSelected)
        }
    }

    /*
         Model: ReqBodyVerifyOTPShipment
         Used By: Order
     */
    class ReqBodyVerifyOTPShipment: Codable {
        public var requestId: String

        public var otpCode: String

        public enum CodingKeys: String, CodingKey {
            case requestId = "request_id"

            case otpCode = "otp_code"
        }

        public init(otpCode: String, requestId: String) {
            self.requestId = requestId

            self.otpCode = otpCode
        }

        public func duplicate() -> ReqBodyVerifyOTPShipment {
            let dict = self.dictionary!
            let copy = ReqBodyVerifyOTPShipment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            requestId = try container.decode(String.self, forKey: .requestId)

            otpCode = try container.decode(String.self, forKey: .otpCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(otpCode, forKey: .otpCode)
        }
    }

    /*
         Model: ResponseVerifyOTPShipment
         Used By: Order
     */
    class ResponseVerifyOTPShipment: Codable {
        public var success: Bool

        public enum CodingKeys: String, CodingKey {
            case success
        }

        public init(success: Bool) {
            self.success = success
        }

        public func duplicate() -> ResponseVerifyOTPShipment {
            let dict = self.dictionary!
            let copy = ResponseVerifyOTPShipment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)
        }
    }

    /*
         Model: sendOTPApplicationResponse
         Used By: Order
     */
    class sendOTPApplicationResponse: Codable {
        public var success: Bool

        public var requestId: String

        public var message: String

        public var resendTimer: Int

        public enum CodingKeys: String, CodingKey {
            case success

            case requestId = "request_id"

            case message

            case resendTimer = "resend_timer"
        }

        public init(message: String, requestId: String, resendTimer: Int, success: Bool) {
            self.success = success

            self.requestId = requestId

            self.message = message

            self.resendTimer = resendTimer
        }

        public func duplicate() -> sendOTPApplicationResponse {
            let dict = self.dictionary!
            let copy = sendOTPApplicationResponse(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            requestId = try container.decode(String.self, forKey: .requestId)

            message = try container.decode(String.self, forKey: .message)

            resendTimer = try container.decode(Int.self, forKey: .resendTimer)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
        }
    }

    /*
         Model: ShipmentById
         Used By: Order
     */
    class ShipmentById: Codable {
        public var shipment: Shipments

        public enum CodingKeys: String, CodingKey {
            case shipment
        }

        public init(shipment: Shipments) {
            self.shipment = shipment
        }

        public func duplicate() -> ShipmentById {
            let dict = self.dictionary!
            let copy = ShipmentById(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipment = try container.decode(Shipments.self, forKey: .shipment)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipment, forKey: .shipment)
        }
    }

    /*
         Model: CustomerDetailsByShipmentId
         Used By: Order
     */
    class CustomerDetailsByShipmentId: Codable {
        public var orderId: String

        public var shipmentId: String

        public var name: String

        public var phone: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case shipmentId = "shipment_id"

            case name

            case phone

            case country
        }

        public init(country: String, name: String, orderId: String, phone: String, shipmentId: String) {
            self.orderId = orderId

            self.shipmentId = shipmentId

            self.name = name

            self.phone = phone

            self.country = country
        }

        public func duplicate() -> CustomerDetailsByShipmentId {
            let dict = self.dictionary!
            let copy = CustomerDetailsByShipmentId(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }

    /*
         Model: ShipmentReasons
         Used By: Order
     */
    class ShipmentReasons: Codable {
        public var reasons: [Reasons]

        public enum CodingKeys: String, CodingKey {
            case reasons
        }

        public init(reasons: [Reasons]) {
            self.reasons = reasons
        }

        public func duplicate() -> ShipmentReasons {
            let dict = self.dictionary!
            let copy = ShipmentReasons(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            reasons = try container.decode([Reasons].self, forKey: .reasons)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasons, forKey: .reasons)
        }
    }

    /*
         Model: ShipmentStatusUpdateBody
         Used By: Order
     */
    class ShipmentStatusUpdateBody: Codable {
        public var statuses: [StatusesBody]

        public var forceTransition: Bool

        public enum CodingKeys: String, CodingKey {
            case statuses

            case forceTransition = "force_transition"
        }

        public init(forceTransition: Bool, statuses: [StatusesBody]) {
            self.statuses = statuses

            self.forceTransition = forceTransition
        }

        public func duplicate() -> ShipmentStatusUpdateBody {
            let dict = self.dictionary!
            let copy = ShipmentStatusUpdateBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            statuses = try container.decode([StatusesBody].self, forKey: .statuses)

            forceTransition = try container.decode(Bool.self, forKey: .forceTransition)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(statuses, forKey: .statuses)

            try? container.encodeIfPresent(forceTransition, forKey: .forceTransition)
        }
    }

    /*
         Model: StatusesBody
         Used By: Order
     */
    class StatusesBody: Codable {
        public var status: String?

        public var shipments: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case status

            case shipments
        }

        public init(shipments: [String: Any]?, status: String?) {
            self.status = status

            self.shipments = shipments
        }

        public func duplicate() -> StatusesBody {
            let dict = self.dictionary!
            let copy = StatusesBody(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([String: Any].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(shipments, forKey: .shipments)
        }
    }

    /*
         Model: ShipmentStatusUpdate
         Used By: Order
     */
    class ShipmentStatusUpdate: Codable {
        public var message: [[String: Any]]

        public var status: Bool

        public enum CodingKeys: String, CodingKey {
            case message

            case status
        }

        public init(message: [[String: Any]], status: Bool) {
            self.message = message

            self.status = status
        }

        public func duplicate() -> ShipmentStatusUpdate {
            let dict = self.dictionary!
            let copy = ShipmentStatusUpdate(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            message = try container.decode([[String: Any]].self, forKey: .message)

            status = try container.decode(Bool.self, forKey: .status)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: ShipmentTrack
         Used By: Order
     */
    class ShipmentTrack: Codable {
        public var results: [Track]

        public enum CodingKeys: String, CodingKey {
            case results
        }

        public init(results: [Track]) {
            self.results = results
        }

        public func duplicate() -> ShipmentTrack {
            let dict = self.dictionary!
            let copy = ShipmentTrack(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            results = try container.decode([Track].self, forKey: .results)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(results, forKey: .results)
        }
    }

    /*
         Model: OrderSchema
         Used By: Order
     */
    class OrderSchema: Codable {
        public var orderId: String?

        public var breakupValues: [BreakupValues]?

        public var orderCreatedTime: String?

        public var shipments: [Shipments]?

        public var totalShipmentsInOrder: Int?

        public var userInfo: UserInfo?

        public var bagsForReorder: [BagsForReorder]?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case breakupValues = "breakup_values"

            case orderCreatedTime = "order_created_time"

            case shipments

            case totalShipmentsInOrder = "total_shipments_in_order"

            case userInfo = "user_info"

            case bagsForReorder = "bags_for_reorder"
        }

        public init(bagsForReorder: [BagsForReorder]?, breakupValues: [BreakupValues]?, orderCreatedTime: String?, orderId: String?, shipments: [Shipments]?, totalShipmentsInOrder: Int?, userInfo: UserInfo?) {
            self.orderId = orderId

            self.breakupValues = breakupValues

            self.orderCreatedTime = orderCreatedTime

            self.shipments = shipments

            self.totalShipmentsInOrder = totalShipmentsInOrder

            self.userInfo = userInfo

            self.bagsForReorder = bagsForReorder
        }

        public func duplicate() -> OrderSchema {
            let dict = self.dictionary!
            let copy = OrderSchema(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderCreatedTime = try container.decode(String.self, forKey: .orderCreatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipments = try container.decode([Shipments].self, forKey: .shipments)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShipmentsInOrder = try container.decode(Int.self, forKey: .totalShipmentsInOrder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(UserInfo.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bagsForReorder = try container.decode([BagsForReorder].self, forKey: .bagsForReorder)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(orderCreatedTime, forKey: .orderCreatedTime)

            try? container.encodeIfPresent(shipments, forKey: .shipments)

            try? container.encodeIfPresent(totalShipmentsInOrder, forKey: .totalShipmentsInOrder)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(bagsForReorder, forKey: .bagsForReorder)
        }
    }

    /*
         Model: BagsForReorder
         Used By: Order
     */
    class BagsForReorder: Codable {
        public var itemId: Int?

        public var itemSize: String?

        public var storeId: Int?

        public var sellerId: Int?

        public var quantity: Int?

        public var articleAssignment: BagsForReorderArticleAssignment?

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case itemSize = "item_size"

            case storeId = "store_id"

            case sellerId = "seller_id"

            case quantity

            case articleAssignment = "article_assignment"
        }

        public init(articleAssignment: BagsForReorderArticleAssignment?, itemId: Int?, itemSize: String?, quantity: Int?, sellerId: Int?, storeId: Int?) {
            self.itemId = itemId

            self.itemSize = itemSize

            self.storeId = storeId

            self.sellerId = sellerId

            self.quantity = quantity

            self.articleAssignment = articleAssignment
        }

        public func duplicate() -> BagsForReorder {
            let dict = self.dictionary!
            let copy = BagsForReorder(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                itemId = try container.decode(Int.self, forKey: .itemId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemSize = try container.decode(String.self, forKey: .itemSize)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                storeId = try container.decode(Int.self, forKey: .storeId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sellerId = try container.decode(Int.self, forKey: .sellerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                quantity = try container.decode(Int.self, forKey: .quantity)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                articleAssignment = try container.decode(BagsForReorderArticleAssignment.self, forKey: .articleAssignment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sellerId, forKey: .sellerId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(articleAssignment, forKey: .articleAssignment)
        }
    }

    /*
         Model: BagsForReorderArticleAssignment
         Used By: Order
     */
    class BagsForReorderArticleAssignment: Codable {
        public var level: String?

        public var strategy: String?

        public enum CodingKeys: String, CodingKey {
            case level

            case strategy
        }

        public init(level: String?, strategy: String?) {
            self.level = level

            self.strategy = strategy
        }

        public func duplicate() -> BagsForReorderArticleAssignment {
            let dict = self.dictionary!
            let copy = BagsForReorderArticleAssignment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                level = try container.decode(String.self, forKey: .level)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                strategy = try container.decode(String.self, forKey: .strategy)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(level, forKey: .level)

            try? container.encodeIfPresent(strategy, forKey: .strategy)
        }
    }

    /*
         Model: PosOrderById
         Used By: Order
     */
    class PosOrderById: Codable {
        public var order: OrderSchema

        public enum CodingKeys: String, CodingKey {
            case order
        }

        public init(order: OrderSchema) {
            self.order = order
        }

        public func duplicate() -> PosOrderById {
            let dict = self.dictionary!
            let copy = PosOrderById(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            order = try container.decode(OrderSchema.self, forKey: .order)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(order, forKey: .order)
        }
    }

    /*
         Model: Bags
         Used By: Order
     */
    class Bags: Codable {
        public var item: Item?

        public var prices: Prices?

        public var currentStatus: CurrentStatus?

        public var id: Int?

        public var financialBreakup: [FinancialBreakup]?

        public enum CodingKeys: String, CodingKey {
            case item

            case prices

            case currentStatus = "current_status"

            case id

            case financialBreakup = "financial_breakup"
        }

        public init(currentStatus: CurrentStatus?, financialBreakup: [FinancialBreakup]?, id: Int?, item: Item?, prices: Prices?) {
            self.item = item

            self.prices = prices

            self.currentStatus = currentStatus

            self.id = id

            self.financialBreakup = financialBreakup
        }

        public func duplicate() -> Bags {
            let dict = self.dictionary!
            let copy = Bags(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                item = try container.decode(Item.self, forKey: .item)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currentStatus = try container.decode(CurrentStatus.self, forKey: .currentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                financialBreakup = try container.decode([FinancialBreakup].self, forKey: .financialBreakup)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(item, forKey: .item)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(financialBreakup, forKey: .financialBreakup)
        }
    }

    /*
         Model: Item
         Used By: Order
     */
    class Item: Codable {
        public var brand: ItemBrand?

        public var name: String?

        public var size: String?

        public var slugKey: String?

        public var image: [String]?

        public var code: String?

        public var id: Double?

        public enum CodingKeys: String, CodingKey {
            case brand

            case name

            case size

            case slugKey = "slug_key"

            case image

            case code

            case id
        }

        public init(brand: ItemBrand?, code: String?, id: Double?, image: [String]?, name: String?, size: String?, slugKey: String?) {
            self.brand = brand

            self.name = name

            self.size = size

            self.slugKey = slugKey

            self.image = image

            self.code = code

            self.id = id
        }

        public func duplicate() -> Item {
            let dict = self.dictionary!
            let copy = Item(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brand = try container.decode(ItemBrand.self, forKey: .brand)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                slugKey = try container.decode(String.self, forKey: .slugKey)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                image = try container.decode([String].self, forKey: .image)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Double.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brand, forKey: .brand)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(slugKey, forKey: .slugKey)

            try? container.encodeIfPresent(image, forKey: .image)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }

    /*
         Model: Prices
         Used By: Order
     */
    class Prices: Codable {
        public var amountPaidRoundoff: Double?

        public var fyndCredits: Double?

        public var codCharges: Double?

        public var cashback: Double?

        public var addedToFyndCash: Bool?

        public var priceMarked: Double?

        public var transferPrice: Double?

        public var couponValue: Double?

        public var priceEffective: Double?

        public var refundCredit: Double?

        public var amountPaid: Double?

        public var refundAmount: Double?

        public var cashbackApplied: Double?

        public var gstTaxPercentage: Double?

        public var valueOfGood: Double?

        public var brandCalculatedAmount: Double?

        public var promotionEffectiveDiscount: Double?

        public var discount: Double?

        public var couponEffectiveDiscount: Double?

        public var deliveryCharge: Double?

        public enum CodingKeys: String, CodingKey {
            case amountPaidRoundoff = "amount_paid_roundoff"

            case fyndCredits = "fynd_credits"

            case codCharges = "cod_charges"

            case cashback

            case addedToFyndCash = "added_to_fynd_cash"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case couponValue = "coupon_value"

            case priceEffective = "price_effective"

            case refundCredit = "refund_credit"

            case amountPaid = "amount_paid"

            case refundAmount = "refund_amount"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"

            case valueOfGood = "value_of_good"

            case brandCalculatedAmount = "brand_calculated_amount"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case discount

            case couponEffectiveDiscount = "coupon_effective_discount"

            case deliveryCharge = "delivery_charge"
        }

        public init(addedToFyndCash: Bool?, amountPaid: Double?, amountPaidRoundoff: Double?, brandCalculatedAmount: Double?, cashback: Double?, cashbackApplied: Double?, codCharges: Double?, couponEffectiveDiscount: Double?, couponValue: Double?, deliveryCharge: Double?, discount: Double?, fyndCredits: Double?, gstTaxPercentage: Double?, priceEffective: Double?, priceMarked: Double?, promotionEffectiveDiscount: Double?, refundAmount: Double?, refundCredit: Double?, transferPrice: Double?, valueOfGood: Double?) {
            self.amountPaidRoundoff = amountPaidRoundoff

            self.fyndCredits = fyndCredits

            self.codCharges = codCharges

            self.cashback = cashback

            self.addedToFyndCash = addedToFyndCash

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.couponValue = couponValue

            self.priceEffective = priceEffective

            self.refundCredit = refundCredit

            self.amountPaid = amountPaid

            self.refundAmount = refundAmount

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage

            self.valueOfGood = valueOfGood

            self.brandCalculatedAmount = brandCalculatedAmount

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.discount = discount

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.deliveryCharge = deliveryCharge
        }

        public func duplicate() -> Prices {
            let dict = self.dictionary!
            let copy = Prices(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Double.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashback = try container.decode(Double.self, forKey: .cashback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)
        }
    }

    /*
         Model: CurrentStatus
         Used By: Order
     */
    class CurrentStatus: Codable {
        public var updatedAt: String?

        public var status: String?

        public var name: String?

        public var journeyType: String?

        public enum CodingKeys: String, CodingKey {
            case updatedAt = "updated_at"

            case status

            case name

            case journeyType = "journey_type"
        }

        public init(journeyType: String?, name: String?, status: String?, updatedAt: String?) {
            self.updatedAt = updatedAt

            self.status = status

            self.name = name

            self.journeyType = journeyType
        }

        public func duplicate() -> CurrentStatus {
            let dict = self.dictionary!
            let copy = CurrentStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                journeyType = try container.decode(String.self, forKey: .journeyType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(journeyType, forKey: .journeyType)
        }
    }

    /*
         Model: FinancialBreakup
         Used By: Order
     */
    class FinancialBreakup: Codable {
        public var brandCalculatedAmount: Double?

        public var couponValue: Double?

        public var amountPaidRoundoff: Double?

        public var gstFee: String?

        public var refundCredit: Double?

        public var cashback: Double?

        public var refundAmount: Double?

        public var valueOfGood: Double?

        public var promotionEffectiveDiscount: Double?

        public var size: String?

        public var totalUnits: Int?

        public var discount: Double?

        public var amountPaid: Double?

        public var fyndCredits: Double?

        public var addedToFyndCash: Bool?

        public var deliveryCharge: Double?

        public var hsnCode: String?

        public var couponEffectiveDiscount: Double?

        public var transferPrice: Double?

        public var identifiers: Identifiers?

        public var gstTag: String?

        public var priceMarked: Double?

        public var priceEffective: Double?

        public var codCharges: Double?

        public var itemName: String?

        public var cashbackApplied: Double?

        public var gstTaxPercentage: Double?

        public enum CodingKeys: String, CodingKey {
            case brandCalculatedAmount = "brand_calculated_amount"

            case couponValue = "coupon_value"

            case amountPaidRoundoff = "amount_paid_roundoff"

            case gstFee = "gst_fee"

            case refundCredit = "refund_credit"

            case cashback

            case refundAmount = "refund_amount"

            case valueOfGood = "value_of_good"

            case promotionEffectiveDiscount = "promotion_effective_discount"

            case size

            case totalUnits = "total_units"

            case discount

            case amountPaid = "amount_paid"

            case fyndCredits = "fynd_credits"

            case addedToFyndCash = "added_to_fynd_cash"

            case deliveryCharge = "delivery_charge"

            case hsnCode = "hsn_code"

            case couponEffectiveDiscount = "coupon_effective_discount"

            case transferPrice = "transfer_price"

            case identifiers

            case gstTag = "gst_tag"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case codCharges = "cod_charges"

            case itemName = "item_name"

            case cashbackApplied = "cashback_applied"

            case gstTaxPercentage = "gst_tax_percentage"
        }

        public init(addedToFyndCash: Bool?, amountPaid: Double?, amountPaidRoundoff: Double?, brandCalculatedAmount: Double?, cashback: Double?, cashbackApplied: Double?, codCharges: Double?, couponEffectiveDiscount: Double?, couponValue: Double?, deliveryCharge: Double?, discount: Double?, fyndCredits: Double?, gstFee: String?, gstTag: String?, gstTaxPercentage: Double?, hsnCode: String?, identifiers: Identifiers?, itemName: String?, priceEffective: Double?, priceMarked: Double?, promotionEffectiveDiscount: Double?, refundAmount: Double?, refundCredit: Double?, size: String?, totalUnits: Int?, transferPrice: Double?, valueOfGood: Double?) {
            self.brandCalculatedAmount = brandCalculatedAmount

            self.couponValue = couponValue

            self.amountPaidRoundoff = amountPaidRoundoff

            self.gstFee = gstFee

            self.refundCredit = refundCredit

            self.cashback = cashback

            self.refundAmount = refundAmount

            self.valueOfGood = valueOfGood

            self.promotionEffectiveDiscount = promotionEffectiveDiscount

            self.size = size

            self.totalUnits = totalUnits

            self.discount = discount

            self.amountPaid = amountPaid

            self.fyndCredits = fyndCredits

            self.addedToFyndCash = addedToFyndCash

            self.deliveryCharge = deliveryCharge

            self.hsnCode = hsnCode

            self.couponEffectiveDiscount = couponEffectiveDiscount

            self.transferPrice = transferPrice

            self.identifiers = identifiers

            self.gstTag = gstTag

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.codCharges = codCharges

            self.itemName = itemName

            self.cashbackApplied = cashbackApplied

            self.gstTaxPercentage = gstTaxPercentage
        }

        public func duplicate() -> FinancialBreakup {
            let dict = self.dictionary!
            let copy = FinancialBreakup(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                brandCalculatedAmount = try container.decode(Double.self, forKey: .brandCalculatedAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponValue = try container.decode(Double.self, forKey: .couponValue)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaidRoundoff = try container.decode(Double.self, forKey: .amountPaidRoundoff)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstFee = try container.decode(String.self, forKey: .gstFee)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundCredit = try container.decode(Double.self, forKey: .refundCredit)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashback = try container.decode(Double.self, forKey: .cashback)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                refundAmount = try container.decode(Double.self, forKey: .refundAmount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                valueOfGood = try container.decode(Double.self, forKey: .valueOfGood)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promotionEffectiveDiscount = try container.decode(Double.self, forKey: .promotionEffectiveDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(String.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalUnits = try container.decode(Int.self, forKey: .totalUnits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                discount = try container.decode(Double.self, forKey: .discount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fyndCredits = try container.decode(Double.self, forKey: .fyndCredits)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addedToFyndCash = try container.decode(Bool.self, forKey: .addedToFyndCash)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hsnCode = try container.decode(String.self, forKey: .hsnCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                couponEffectiveDiscount = try container.decode(Double.self, forKey: .couponEffectiveDiscount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transferPrice = try container.decode(Double.self, forKey: .transferPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                identifiers = try container.decode(Identifiers.self, forKey: .identifiers)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTag = try container.decode(String.self, forKey: .gstTag)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                codCharges = try container.decode(Double.self, forKey: .codCharges)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                itemName = try container.decode(String.self, forKey: .itemName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                cashbackApplied = try container.decode(Double.self, forKey: .cashbackApplied)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gstTaxPercentage = try container.decode(Double.self, forKey: .gstTaxPercentage)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(brandCalculatedAmount, forKey: .brandCalculatedAmount)

            try? container.encodeIfPresent(couponValue, forKey: .couponValue)

            try? container.encodeIfPresent(amountPaidRoundoff, forKey: .amountPaidRoundoff)

            try? container.encodeIfPresent(gstFee, forKey: .gstFee)

            try? container.encodeIfPresent(refundCredit, forKey: .refundCredit)

            try? container.encodeIfPresent(cashback, forKey: .cashback)

            try? container.encodeIfPresent(refundAmount, forKey: .refundAmount)

            try? container.encodeIfPresent(valueOfGood, forKey: .valueOfGood)

            try? container.encodeIfPresent(promotionEffectiveDiscount, forKey: .promotionEffectiveDiscount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(totalUnits, forKey: .totalUnits)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(fyndCredits, forKey: .fyndCredits)

            try? container.encodeIfPresent(addedToFyndCash, forKey: .addedToFyndCash)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(hsnCode, forKey: .hsnCode)

            try? container.encodeIfPresent(couponEffectiveDiscount, forKey: .couponEffectiveDiscount)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(identifiers, forKey: .identifiers)

            try? container.encodeIfPresent(gstTag, forKey: .gstTag)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(codCharges, forKey: .codCharges)

            try? container.encodeIfPresent(itemName, forKey: .itemName)

            try? container.encodeIfPresent(cashbackApplied, forKey: .cashbackApplied)

            try? container.encodeIfPresent(gstTaxPercentage, forKey: .gstTaxPercentage)
        }
    }

    /*
         Model: Identifiers
         Used By: Order
     */
    class Identifiers: Codable {
        public var ean: String?

        public var skuCode: String?

        public enum CodingKeys: String, CodingKey {
            case ean

            case skuCode = "sku_code"
        }

        public init(ean: String?, skuCode: String?) {
            self.ean = ean

            self.skuCode = skuCode
        }

        public func duplicate() -> Identifiers {
            let dict = self.dictionary!
            let copy = Identifiers(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                ean = try container.decode(String.self, forKey: .ean)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                skuCode = try container.decode(String.self, forKey: .skuCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(ean, forKey: .ean)

            try? container.encodeIfPresent(skuCode, forKey: .skuCode)
        }
    }

    /*
         Model: ItemBrand
         Used By: Order
     */
    class ItemBrand: Codable {
        public var name: String?

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case logo
        }

        public init(logo: String?, name: String?) {
            self.name = name

            self.logo = logo
        }

        public func duplicate() -> ItemBrand {
            let dict = self.dictionary!
            let copy = ItemBrand(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }

    /*
         Model: BreakupValues
         Used By: Order
     */
    class BreakupValues: Codable {
        public var display: String?

        public var value: Double?

        public var name: String?

        public enum CodingKeys: String, CodingKey {
            case display

            case value

            case name
        }

        public init(display: String?, name: String?, value: Double?) {
            self.display = display

            self.value = value

            self.name = name
        }

        public func duplicate() -> BreakupValues {
            let dict = self.dictionary!
            let copy = BreakupValues(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                display = try container.decode(String.self, forKey: .display)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                value = try container.decode(Double.self, forKey: .value)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(display, forKey: .display)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }

    /*
         Model: DeliveryAddress
         Used By: Order
     */
    class DeliveryAddress: Codable {
        public var pincode: String?

        public var landmark: String?

        public var contactPerson: String?

        public var phone: String?

        public var state: String?

        public var version: String?

        public var address1: String?

        public var createdAt: String?

        public var addressType: String?

        public var addressCategory: String?

        public var area: String?

        public var city: String?

        public var latitude: Double?

        public var longitude: Double?

        public var email: String?

        public var country: String?

        public var address2: String?

        public var updatedAt: String?

        public var name: String?

        public var address: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case landmark

            case contactPerson = "contact_person"

            case phone

            case state

            case version

            case address1

            case createdAt = "created_at"

            case addressType = "address_type"

            case addressCategory = "address_category"

            case area

            case city

            case latitude

            case longitude

            case email

            case country

            case address2

            case updatedAt = "updated_at"

            case name

            case address
        }

        public init(address: String?, address1: String?, address2: String?, addressCategory: String?, addressType: String?, area: String?, city: String?, contactPerson: String?, country: String?, createdAt: String?, email: String?, landmark: String?, latitude: Double?, longitude: Double?, name: String?, phone: String?, pincode: String?, state: String?, updatedAt: String?, version: String?) {
            self.pincode = pincode

            self.landmark = landmark

            self.contactPerson = contactPerson

            self.phone = phone

            self.state = state

            self.version = version

            self.address1 = address1

            self.createdAt = createdAt

            self.addressType = addressType

            self.addressCategory = addressCategory

            self.area = area

            self.city = city

            self.latitude = latitude

            self.longitude = longitude

            self.email = email

            self.country = country

            self.address2 = address2

            self.updatedAt = updatedAt

            self.name = name

            self.address = address
        }

        public func duplicate() -> DeliveryAddress {
            let dict = self.dictionary!
            let copy = DeliveryAddress(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactPerson = try container.decode(String.self, forKey: .contactPerson)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressCategory = try container.decode(String.self, forKey: .addressCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latitude = try container.decode(Double.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longitude = try container.decode(Double.self, forKey: .longitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address = try container.decode(String.self, forKey: .address)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }

    /*
         Model: FulfillingStore
         Used By: Order
     */
    class FulfillingStore: Codable {
        public var code: String?

        public var id: Int?

        public var name: String?

        public var companyId: Int?

        public var companyName: String?

        public enum CodingKeys: String, CodingKey {
            case code

            case id

            case name

            case companyId = "company_id"

            case companyName = "company_name"
        }

        public init(code: String?, companyId: Int?, companyName: String?, id: Int?, name: String?) {
            self.code = code

            self.id = id

            self.name = name

            self.companyId = companyId

            self.companyName = companyName
        }

        public func duplicate() -> FulfillingStore {
            let dict = self.dictionary!
            let copy = FulfillingStore(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyId = try container.decode(Int.self, forKey: .companyId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                companyName = try container.decode(String.self, forKey: .companyName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(companyName, forKey: .companyName)
        }
    }

    /*
         Model: Invoice
         Used By: Order
     */
    class Invoice: Codable {
        public var updatedDate: String?

        public var invoiceUrl: String?

        public var labelUrl: String?

        public enum CodingKeys: String, CodingKey {
            case updatedDate = "updated_date"

            case invoiceUrl = "invoice_url"

            case labelUrl = "label_url"
        }

        public init(invoiceUrl: String?, labelUrl: String?, updatedDate: String?) {
            self.updatedDate = updatedDate

            self.invoiceUrl = invoiceUrl

            self.labelUrl = labelUrl
        }

        public func duplicate() -> Invoice {
            let dict = self.dictionary!
            let copy = Invoice(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                updatedDate = try container.decode(String.self, forKey: .updatedDate)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoiceUrl = try container.decode(String.self, forKey: .invoiceUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                labelUrl = try container.decode(String.self, forKey: .labelUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(updatedDate, forKey: .updatedDate)

            try? container.encodeIfPresent(invoiceUrl, forKey: .invoiceUrl)

            try? container.encodeIfPresent(labelUrl, forKey: .labelUrl)
        }
    }

    /*
         Model: Promise
         Used By: Order
     */
    class Promise: Codable {
        public var timestamp: Timestamp?

        public enum CodingKeys: String, CodingKey {
            case timestamp
        }

        public init(timestamp: Timestamp?) {
            self.timestamp = timestamp
        }

        public func duplicate() -> Promise {
            let dict = self.dictionary!
            let copy = Promise(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                timestamp = try container.decode(Timestamp.self, forKey: .timestamp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(timestamp, forKey: .timestamp)
        }
    }

    /*
         Model: Timestamp
         Used By: Order
     */
    class Timestamp: Codable {
        public var min: String?

        public var max: String?

        public enum CodingKeys: String, CodingKey {
            case min

            case max
        }

        public init(max: String?, min: String?) {
            self.min = min

            self.max = max
        }

        public func duplicate() -> Timestamp {
            let dict = self.dictionary!
            let copy = Timestamp(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                min = try container.decode(String.self, forKey: .min)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                max = try container.decode(String.self, forKey: .max)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(min, forKey: .min)

            try? container.encodeIfPresent(max, forKey: .max)
        }
    }

    /*
         Model: Reasons
         Used By: Order
     */
    class Reasons: Codable {
        public var reasonText: String?

        public var showTextArea: Bool?

        public var feedbackType: String?

        public var flow: String?

        public var reasonId: Int?

        public var priority: Int?

        public enum CodingKeys: String, CodingKey {
            case reasonText = "reason_text"

            case showTextArea = "show_text_area"

            case feedbackType = "feedback_type"

            case flow

            case reasonId = "reason_id"

            case priority
        }

        public init(feedbackType: String?, flow: String?, priority: Int?, reasonId: Int?, reasonText: String?, showTextArea: Bool?) {
            self.reasonText = reasonText

            self.showTextArea = showTextArea

            self.feedbackType = feedbackType

            self.flow = flow

            self.reasonId = reasonId

            self.priority = priority
        }

        public func duplicate() -> Reasons {
            let dict = self.dictionary!
            let copy = Reasons(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                showTextArea = try container.decode(Bool.self, forKey: .showTextArea)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                feedbackType = try container.decode(String.self, forKey: .feedbackType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                flow = try container.decode(String.self, forKey: .flow)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reasonId = try container.decode(Int.self, forKey: .reasonId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                priority = try container.decode(Int.self, forKey: .priority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(reasonText, forKey: .reasonText)

            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)

            try? container.encodeIfPresent(feedbackType, forKey: .feedbackType)

            try? container.encodeIfPresent(flow, forKey: .flow)

            try? container.encodeIfPresent(reasonId, forKey: .reasonId)

            try? container.encodeIfPresent(priority, forKey: .priority)
        }
    }

    /*
         Model: ShipmentStatus
         Used By: Order
     */
    class ShipmentStatus: Codable {
        public var title: String?

        public var hexCode: String?

        public enum CodingKeys: String, CodingKey {
            case title

            case hexCode = "hex_code"
        }

        public init(hexCode: String?, title: String?) {
            self.title = title

            self.hexCode = hexCode
        }

        public func duplicate() -> ShipmentStatus {
            let dict = self.dictionary!
            let copy = ShipmentStatus(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                hexCode = try container.decode(String.self, forKey: .hexCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(hexCode, forKey: .hexCode)
        }
    }

    /*
         Model: ShipmentUserInfo
         Used By: Order
     */
    class ShipmentUserInfo: Codable {
        public var gender: String?

        public var mobile: String?

        public var firstName: String?

        public var lastName: String?

        public enum CodingKeys: String, CodingKey {
            case gender

            case mobile

            case firstName = "first_name"

            case lastName = "last_name"
        }

        public init(firstName: String?, gender: String?, lastName: String?, mobile: String?) {
            self.gender = gender

            self.mobile = mobile

            self.firstName = firstName

            self.lastName = lastName
        }

        public func duplicate() -> ShipmentUserInfo {
            let dict = self.dictionary!
            let copy = ShipmentUserInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)
        }
    }

    /*
         Model: Shipments
         Used By: Order
     */
    class Shipments: Codable {
        public var orderId: String?

        public var breakupValues: [BreakupValues]?

        public var trackUrl: String?

        public var trakingNo: String?

        public var awbNo: String?

        public var dpName: String?

        public var trackingDetails: [TrackingDetails]?

        public var beneficiaryDetails: Bool?

        public var canReturn: Bool?

        public var canBreak: [String: Any]?

        public var prices: Prices?

        public var needHelpUrl: String?

        public var shipmentId: String?

        public var totalBags: Int?

        public var deliveryAddress: DeliveryAddress?

        public var invoice: Invoice?

        public var comment: String?

        public var orderType: String?

        public var promise: Promise?

        public var fulfillingStore: FulfillingStore?

        public var bags: [Bags]?

        public var canCancel: Bool?

        public var payment: ShipmentPayment?

        public var shipmentCreatedAt: String?

        public var shipmentStatus: ShipmentStatus?

        public var userInfo: ShipmentUserInfo?

        public var sizeInfo: [String: Any]?

        public var totalDetails: ShipmentTotalDetails?

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case breakupValues = "breakup_values"

            case trackUrl = "track_url"

            case trakingNo = "traking_no"

            case awbNo = "awb_no"

            case dpName = "dp_name"

            case trackingDetails = "tracking_details"

            case beneficiaryDetails = "beneficiary_details"

            case canReturn = "can_return"

            case canBreak = "can_break"

            case prices

            case needHelpUrl = "need_help_url"

            case shipmentId = "shipment_id"

            case totalBags = "total_bags"

            case deliveryAddress = "delivery_address"

            case invoice

            case comment

            case orderType = "order_type"

            case promise

            case fulfillingStore = "fulfilling_store"

            case bags

            case canCancel = "can_cancel"

            case payment

            case shipmentCreatedAt = "shipment_created_at"

            case shipmentStatus = "shipment_status"

            case userInfo = "user_info"

            case sizeInfo = "size_info"

            case totalDetails = "total_details"
        }

        public init(awbNo: String?, bags: [Bags]?, beneficiaryDetails: Bool?, breakupValues: [BreakupValues]?, canBreak: [String: Any]?, canCancel: Bool?, canReturn: Bool?, comment: String?, deliveryAddress: DeliveryAddress?, dpName: String?, fulfillingStore: FulfillingStore?, invoice: Invoice?, needHelpUrl: String?, orderId: String?, orderType: String?, payment: ShipmentPayment?, prices: Prices?, promise: Promise?, shipmentCreatedAt: String?, shipmentId: String?, shipmentStatus: ShipmentStatus?, sizeInfo: [String: Any]?, totalBags: Int?, totalDetails: ShipmentTotalDetails?, trackingDetails: [TrackingDetails]?, trackUrl: String?, trakingNo: String?, userInfo: ShipmentUserInfo?) {
            self.orderId = orderId

            self.breakupValues = breakupValues

            self.trackUrl = trackUrl

            self.trakingNo = trakingNo

            self.awbNo = awbNo

            self.dpName = dpName

            self.trackingDetails = trackingDetails

            self.beneficiaryDetails = beneficiaryDetails

            self.canReturn = canReturn

            self.canBreak = canBreak

            self.prices = prices

            self.needHelpUrl = needHelpUrl

            self.shipmentId = shipmentId

            self.totalBags = totalBags

            self.deliveryAddress = deliveryAddress

            self.invoice = invoice

            self.comment = comment

            self.orderType = orderType

            self.promise = promise

            self.fulfillingStore = fulfillingStore

            self.bags = bags

            self.canCancel = canCancel

            self.payment = payment

            self.shipmentCreatedAt = shipmentCreatedAt

            self.shipmentStatus = shipmentStatus

            self.userInfo = userInfo

            self.sizeInfo = sizeInfo

            self.totalDetails = totalDetails
        }

        public func duplicate() -> Shipments {
            let dict = self.dictionary!
            let copy = Shipments(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderId = try container.decode(String.self, forKey: .orderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                breakupValues = try container.decode([BreakupValues].self, forKey: .breakupValues)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackUrl = try container.decode(String.self, forKey: .trackUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trakingNo = try container.decode(String.self, forKey: .trakingNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                awbNo = try container.decode(String.self, forKey: .awbNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                dpName = try container.decode(String.self, forKey: .dpName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                trackingDetails = try container.decode([TrackingDetails].self, forKey: .trackingDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                beneficiaryDetails = try container.decode(Bool.self, forKey: .beneficiaryDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canReturn = try container.decode(Bool.self, forKey: .canReturn)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canBreak = try container.decode([String: Any].self, forKey: .canBreak)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                prices = try container.decode(Prices.self, forKey: .prices)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                needHelpUrl = try container.decode(String.self, forKey: .needHelpUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentId = try container.decode(String.self, forKey: .shipmentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalBags = try container.decode(Int.self, forKey: .totalBags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                deliveryAddress = try container.decode(DeliveryAddress.self, forKey: .deliveryAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                invoice = try container.decode(Invoice.self, forKey: .invoice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                comment = try container.decode(String.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderType = try container.decode(String.self, forKey: .orderType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                promise = try container.decode(Promise.self, forKey: .promise)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                fulfillingStore = try container.decode(FulfillingStore.self, forKey: .fulfillingStore)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                bags = try container.decode([Bags].self, forKey: .bags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                canCancel = try container.decode(Bool.self, forKey: .canCancel)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                payment = try container.decode(ShipmentPayment.self, forKey: .payment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentCreatedAt = try container.decode(String.self, forKey: .shipmentCreatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentStatus = try container.decode(ShipmentStatus.self, forKey: .shipmentStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userInfo = try container.decode(ShipmentUserInfo.self, forKey: .userInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizeInfo = try container.decode([String: Any].self, forKey: .sizeInfo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalDetails = try container.decode(ShipmentTotalDetails.self, forKey: .totalDetails)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(breakupValues, forKey: .breakupValues)

            try? container.encodeIfPresent(trackUrl, forKey: .trackUrl)

            try? container.encodeIfPresent(trakingNo, forKey: .trakingNo)

            try? container.encodeIfPresent(awbNo, forKey: .awbNo)

            try? container.encodeIfPresent(dpName, forKey: .dpName)

            try? container.encodeIfPresent(trackingDetails, forKey: .trackingDetails)

            try? container.encodeIfPresent(beneficiaryDetails, forKey: .beneficiaryDetails)

            try? container.encodeIfPresent(canReturn, forKey: .canReturn)

            try? container.encodeIfPresent(canBreak, forKey: .canBreak)

            try? container.encodeIfPresent(prices, forKey: .prices)

            try? container.encodeIfPresent(needHelpUrl, forKey: .needHelpUrl)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(totalBags, forKey: .totalBags)

            try? container.encodeIfPresent(deliveryAddress, forKey: .deliveryAddress)

            try? container.encodeIfPresent(invoice, forKey: .invoice)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(orderType, forKey: .orderType)

            try? container.encodeIfPresent(promise, forKey: .promise)

            try? container.encodeIfPresent(fulfillingStore, forKey: .fulfillingStore)

            try? container.encodeIfPresent(bags, forKey: .bags)

            try? container.encodeIfPresent(canCancel, forKey: .canCancel)

            try? container.encodeIfPresent(payment, forKey: .payment)

            try? container.encodeIfPresent(shipmentCreatedAt, forKey: .shipmentCreatedAt)

            try? container.encodeIfPresent(shipmentStatus, forKey: .shipmentStatus)

            try? container.encodeIfPresent(userInfo, forKey: .userInfo)

            try? container.encodeIfPresent(sizeInfo, forKey: .sizeInfo)

            try? container.encodeIfPresent(totalDetails, forKey: .totalDetails)
        }
    }

    /*
         Model: ShipmentTotalDetails
         Used By: Order
     */
    class ShipmentTotalDetails: Codable {
        public var totalPrice: Double?

        public var sizes: Int?

        public var pieces: Int?

        public enum CodingKeys: String, CodingKey {
            case totalPrice = "total_price"

            case sizes

            case pieces
        }

        public init(pieces: Int?, sizes: Int?, totalPrice: Double?) {
            self.totalPrice = totalPrice

            self.sizes = sizes

            self.pieces = pieces
        }

        public func duplicate() -> ShipmentTotalDetails {
            let dict = self.dictionary!
            let copy = ShipmentTotalDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                totalPrice = try container.decode(Double.self, forKey: .totalPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sizes = try container.decode(Int.self, forKey: .sizes)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pieces = try container.decode(Int.self, forKey: .pieces)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)

            try? container.encodeIfPresent(sizes, forKey: .sizes)

            try? container.encodeIfPresent(pieces, forKey: .pieces)
        }
    }

    /*
         Model: ShipmentPayment
         Used By: Order
     */
    class ShipmentPayment: Codable {
        public var logo: String?

        public var mode: String?

        public var status: String?

        public enum CodingKeys: String, CodingKey {
            case logo

            case mode

            case status
        }

        public init(logo: String?, mode: String?, status: String?) {
            self.logo = logo

            self.mode = mode

            self.status = status
        }

        public func duplicate() -> ShipmentPayment {
            let dict = self.dictionary!
            let copy = ShipmentPayment(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(status, forKey: .status)
        }
    }

    /*
         Model: Track
         Used By: Order
     */
    class Track: Codable {
        public var awb: String?

        public var updatedAt: String?

        public var lastLocationRecievedAt: String?

        public var reason: String?

        public var shipmentType: String?

        public var status: String?

        public var updatedTime: String?

        public var accountName: String?

        public enum CodingKeys: String, CodingKey {
            case awb

            case updatedAt = "updated_at"

            case lastLocationRecievedAt = "last_location_recieved_at"

            case reason

            case shipmentType = "shipment_type"

            case status

            case updatedTime = "updated_time"

            case accountName = "account_name"
        }

        public init(accountName: String?, awb: String?, lastLocationRecievedAt: String?, reason: String?, shipmentType: String?, status: String?, updatedAt: String?, updatedTime: String?) {
            self.awb = awb

            self.updatedAt = updatedAt

            self.lastLocationRecievedAt = lastLocationRecievedAt

            self.reason = reason

            self.shipmentType = shipmentType

            self.status = status

            self.updatedTime = updatedTime

            self.accountName = accountName
        }

        public func duplicate() -> Track {
            let dict = self.dictionary!
            let copy = Track(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                awb = try container.decode(String.self, forKey: .awb)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastLocationRecievedAt = try container.decode(String.self, forKey: .lastLocationRecievedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                reason = try container.decode(String.self, forKey: .reason)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shipmentType = try container.decode(String.self, forKey: .shipmentType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedTime = try container.decode(String.self, forKey: .updatedTime)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                accountName = try container.decode(String.self, forKey: .accountName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(awb, forKey: .awb)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(lastLocationRecievedAt, forKey: .lastLocationRecievedAt)

            try? container.encodeIfPresent(reason, forKey: .reason)

            try? container.encodeIfPresent(shipmentType, forKey: .shipmentType)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(updatedTime, forKey: .updatedTime)

            try? container.encodeIfPresent(accountName, forKey: .accountName)
        }
    }

    /*
         Model: TrackingDetails
         Used By: Order
     */
    class TrackingDetails: Codable {
        public var isCurrent: Bool?

        public var status: String?

        public var time: String?

        public var isPassed: Bool?

        public enum CodingKeys: String, CodingKey {
            case isCurrent = "is_current"

            case status

            case time

            case isPassed = "is_passed"
        }

        public init(isCurrent: Bool?, isPassed: Bool?, status: String?, time: String?) {
            self.isCurrent = isCurrent

            self.status = status

            self.time = time

            self.isPassed = isPassed
        }

        public func duplicate() -> TrackingDetails {
            let dict = self.dictionary!
            let copy = TrackingDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isCurrent = try container.decode(Bool.self, forKey: .isCurrent)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                status = try container.decode(String.self, forKey: .status)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                time = try container.decode(String.self, forKey: .time)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPassed = try container.decode(Bool.self, forKey: .isPassed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isCurrent, forKey: .isCurrent)

            try? container.encodeIfPresent(status, forKey: .status)

            try? container.encodeIfPresent(time, forKey: .time)

            try? container.encodeIfPresent(isPassed, forKey: .isPassed)
        }
    }

    /*
         Model: UserInfo
         Used By: Order
     */
    class UserInfo: Codable {
        public var gender: String?

        public var mobile: String?

        public var name: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case gender

            case mobile

            case name

            case email
        }

        public init(email: String?, gender: String?, mobile: String?, name: String?) {
            self.gender = gender

            self.mobile = mobile

            self.name = name

            self.email = email
        }

        public func duplicate() -> UserInfo {
            let dict = self.dictionary!
            let copy = UserInfo(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }

    /*
         Model: ApefaceApiError
         Used By: Order
     */
    class ApefaceApiError: Codable {
        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case message
        }

        public init(message: String?) {
            self.message = message
        }

        public func duplicate() -> ApefaceApiError {
            let dict = self.dictionary!
            let copy = ApefaceApiError(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
