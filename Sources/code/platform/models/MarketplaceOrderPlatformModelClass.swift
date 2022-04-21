

import Foundation
public extension PlatformClient {
    /*
         Model: MarketplaceOrder
         Used By: Order
     */

    class MarketplaceOrder: Codable {
        public var orderStatusUrl: String?

        public var adminGraphqlApiId: String?

        public var email: String?

        public var test: Bool?

        public var note: String?

        public var totalPrice: String?

        public var appId: Int?

        public var totalDiscountsSet: TotalDiscountsSet?

        public var totalPriceSet: TotalPriceSet?

        public var totalTaxSet: TotalTaxSet?

        public var gateway: String?

        public var name: String?

        public var subtotalPriceSet: SubtotalPriceSet?

        public var number: Int?

        public var buyerAcceptsMarketing: Bool?

        public var contactEmail: String?

        public var token: String?

        public var sourceName: String?

        public var paymentGatewayNames: [[String: Any]]?

        public var presentmentCurrency: String?

        public var subtotalPrice: String?

        public var processedAt: String?

        public var orderNumber: Int?

        public var totalTipReceived: String?

        public var id: Int?

        public var confirmed: Bool?

        public var currency: String?

        public var totalLineItemsPrice: String?

        public var lineItems: LineItems?

        public var createdAt: String?

        public var updatedAt: String?

        public var totalWeight: Int?

        public var billingAddress: BillingAddress?

        public var totalShippingPriceSet: TotalShippingPriceSet?

        public var customer: Customer?

        public var totalDiscounts: String?

        public var totalLineItemsPriceSet: TotalLineItemsPriceSet?

        public var tags: String?

        public var totalPriceUsd: String?

        public var userId: Int?

        public var totalTax: String?

        public var processingMethod: String?

        public var shippingAddress: OrderShippingAddress?

        public var taxesIncluded: Bool?

        public var financialStatus: String?

        public enum CodingKeys: String, CodingKey {
            case orderStatusUrl = "order_status_url"

            case adminGraphqlApiId = "admin_graphql_api_id"

            case email

            case test

            case note

            case totalPrice = "total_price"

            case appId = "app_id"

            case totalDiscountsSet = "total_discounts_set"

            case totalPriceSet = "total_price_set"

            case totalTaxSet = "total_tax_set"

            case gateway

            case name

            case subtotalPriceSet = "subtotal_price_set"

            case number

            case buyerAcceptsMarketing = "buyer_accepts_marketing"

            case contactEmail = "contact_email"

            case token

            case sourceName = "source_name"

            case paymentGatewayNames = "payment_gateway_names"

            case presentmentCurrency = "presentment_currency"

            case subtotalPrice = "subtotal_price"

            case processedAt = "processed_at"

            case orderNumber = "order_number"

            case totalTipReceived = "total_tip_received"

            case id

            case confirmed

            case currency

            case totalLineItemsPrice = "total_line_items_price"

            case lineItems = "line_items"

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case totalWeight = "total_weight"

            case billingAddress = "billing_address"

            case totalShippingPriceSet = "total_shipping_price_set"

            case customer

            case totalDiscounts = "total_discounts"

            case totalLineItemsPriceSet = "total_line_items_price_set"

            case tags

            case totalPriceUsd = "total_price_usd"

            case userId = "user_id"

            case totalTax = "total_tax"

            case processingMethod = "processing_method"

            case shippingAddress = "shipping_address"

            case taxesIncluded = "taxes_included"

            case financialStatus = "financial_status"
        }

        public init(adminGraphqlApiId: String? = nil, appId: Int? = nil, billingAddress: BillingAddress? = nil, buyerAcceptsMarketing: Bool? = nil, confirmed: Bool? = nil, contactEmail: String? = nil, createdAt: String? = nil, currency: String? = nil, customer: Customer? = nil, email: String? = nil, financialStatus: String? = nil, gateway: String? = nil, id: Int? = nil, lineItems: LineItems? = nil, name: String? = nil, note: String? = nil, number: Int? = nil, orderNumber: Int? = nil, orderStatusUrl: String? = nil, paymentGatewayNames: [[String: Any]]? = nil, presentmentCurrency: String? = nil, processedAt: String? = nil, processingMethod: String? = nil, shippingAddress: OrderShippingAddress? = nil, sourceName: String? = nil, subtotalPrice: String? = nil, subtotalPriceSet: SubtotalPriceSet? = nil, tags: String? = nil, taxesIncluded: Bool? = nil, test: Bool? = nil, token: String? = nil, totalDiscounts: String? = nil, totalDiscountsSet: TotalDiscountsSet? = nil, totalLineItemsPrice: String? = nil, totalLineItemsPriceSet: TotalLineItemsPriceSet? = nil, totalPrice: String? = nil, totalPriceSet: TotalPriceSet? = nil, totalPriceUsd: String? = nil, totalShippingPriceSet: TotalShippingPriceSet? = nil, totalTax: String? = nil, totalTaxSet: TotalTaxSet? = nil, totalTipReceived: String? = nil, totalWeight: Int? = nil, updatedAt: String? = nil, userId: Int? = nil) {
            self.orderStatusUrl = orderStatusUrl

            self.adminGraphqlApiId = adminGraphqlApiId

            self.email = email

            self.test = test

            self.note = note

            self.totalPrice = totalPrice

            self.appId = appId

            self.totalDiscountsSet = totalDiscountsSet

            self.totalPriceSet = totalPriceSet

            self.totalTaxSet = totalTaxSet

            self.gateway = gateway

            self.name = name

            self.subtotalPriceSet = subtotalPriceSet

            self.number = number

            self.buyerAcceptsMarketing = buyerAcceptsMarketing

            self.contactEmail = contactEmail

            self.token = token

            self.sourceName = sourceName

            self.paymentGatewayNames = paymentGatewayNames

            self.presentmentCurrency = presentmentCurrency

            self.subtotalPrice = subtotalPrice

            self.processedAt = processedAt

            self.orderNumber = orderNumber

            self.totalTipReceived = totalTipReceived

            self.id = id

            self.confirmed = confirmed

            self.currency = currency

            self.totalLineItemsPrice = totalLineItemsPrice

            self.lineItems = lineItems

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.totalWeight = totalWeight

            self.billingAddress = billingAddress

            self.totalShippingPriceSet = totalShippingPriceSet

            self.customer = customer

            self.totalDiscounts = totalDiscounts

            self.totalLineItemsPriceSet = totalLineItemsPriceSet

            self.tags = tags

            self.totalPriceUsd = totalPriceUsd

            self.userId = userId

            self.totalTax = totalTax

            self.processingMethod = processingMethod

            self.shippingAddress = shippingAddress

            self.taxesIncluded = taxesIncluded

            self.financialStatus = financialStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                orderStatusUrl = try container.decode(String.self, forKey: .orderStatusUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                adminGraphqlApiId = try container.decode(String.self, forKey: .adminGraphqlApiId)

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
                test = try container.decode(Bool.self, forKey: .test)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                note = try container.decode(String.self, forKey: .note)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalPrice = try container.decode(String.self, forKey: .totalPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                appId = try container.decode(Int.self, forKey: .appId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalDiscountsSet = try container.decode(TotalDiscountsSet.self, forKey: .totalDiscountsSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalPriceSet = try container.decode(TotalPriceSet.self, forKey: .totalPriceSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalTaxSet = try container.decode(TotalTaxSet.self, forKey: .totalTaxSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                gateway = try container.decode(String.self, forKey: .gateway)

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
                subtotalPriceSet = try container.decode(SubtotalPriceSet.self, forKey: .subtotalPriceSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                number = try container.decode(Int.self, forKey: .number)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                buyerAcceptsMarketing = try container.decode(Bool.self, forKey: .buyerAcceptsMarketing)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                contactEmail = try container.decode(String.self, forKey: .contactEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                token = try container.decode(String.self, forKey: .token)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sourceName = try container.decode(String.self, forKey: .sourceName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                paymentGatewayNames = try container.decode([[String: Any]].self, forKey: .paymentGatewayNames)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                presentmentCurrency = try container.decode(String.self, forKey: .presentmentCurrency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                subtotalPrice = try container.decode(String.self, forKey: .subtotalPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processedAt = try container.decode(String.self, forKey: .processedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                orderNumber = try container.decode(Int.self, forKey: .orderNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalTipReceived = try container.decode(String.self, forKey: .totalTipReceived)

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
                confirmed = try container.decode(Bool.self, forKey: .confirmed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                currency = try container.decode(String.self, forKey: .currency)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalLineItemsPrice = try container.decode(String.self, forKey: .totalLineItemsPrice)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lineItems = try container.decode(LineItems.self, forKey: .lineItems)

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
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalWeight = try container.decode(Int.self, forKey: .totalWeight)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                billingAddress = try container.decode(BillingAddress.self, forKey: .billingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalShippingPriceSet = try container.decode(TotalShippingPriceSet.self, forKey: .totalShippingPriceSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customer = try container.decode(Customer.self, forKey: .customer)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalDiscounts = try container.decode(String.self, forKey: .totalDiscounts)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalLineItemsPriceSet = try container.decode(TotalLineItemsPriceSet.self, forKey: .totalLineItemsPriceSet)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                tags = try container.decode(String.self, forKey: .tags)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalPriceUsd = try container.decode(String.self, forKey: .totalPriceUsd)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                userId = try container.decode(Int.self, forKey: .userId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                totalTax = try container.decode(String.self, forKey: .totalTax)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                processingMethod = try container.decode(String.self, forKey: .processingMethod)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                shippingAddress = try container.decode(OrderShippingAddress.self, forKey: .shippingAddress)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                taxesIncluded = try container.decode(Bool.self, forKey: .taxesIncluded)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                financialStatus = try container.decode(String.self, forKey: .financialStatus)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderStatusUrl, forKey: .orderStatusUrl)

            try? container.encodeIfPresent(adminGraphqlApiId, forKey: .adminGraphqlApiId)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(test, forKey: .test)

            try? container.encodeIfPresent(note, forKey: .note)

            try? container.encodeIfPresent(totalPrice, forKey: .totalPrice)

            try? container.encodeIfPresent(appId, forKey: .appId)

            try? container.encodeIfPresent(totalDiscountsSet, forKey: .totalDiscountsSet)

            try? container.encodeIfPresent(totalPriceSet, forKey: .totalPriceSet)

            try? container.encodeIfPresent(totalTaxSet, forKey: .totalTaxSet)

            try? container.encodeIfPresent(gateway, forKey: .gateway)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(subtotalPriceSet, forKey: .subtotalPriceSet)

            try? container.encodeIfPresent(number, forKey: .number)

            try? container.encodeIfPresent(buyerAcceptsMarketing, forKey: .buyerAcceptsMarketing)

            try? container.encodeIfPresent(contactEmail, forKey: .contactEmail)

            try? container.encodeIfPresent(token, forKey: .token)

            try? container.encodeIfPresent(sourceName, forKey: .sourceName)

            try? container.encodeIfPresent(paymentGatewayNames, forKey: .paymentGatewayNames)

            try? container.encodeIfPresent(presentmentCurrency, forKey: .presentmentCurrency)

            try? container.encodeIfPresent(subtotalPrice, forKey: .subtotalPrice)

            try? container.encodeIfPresent(processedAt, forKey: .processedAt)

            try? container.encodeIfPresent(orderNumber, forKey: .orderNumber)

            try? container.encodeIfPresent(totalTipReceived, forKey: .totalTipReceived)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(confirmed, forKey: .confirmed)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(totalLineItemsPrice, forKey: .totalLineItemsPrice)

            try? container.encodeIfPresent(lineItems, forKey: .lineItems)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(totalWeight, forKey: .totalWeight)

            try? container.encodeIfPresent(billingAddress, forKey: .billingAddress)

            try? container.encodeIfPresent(totalShippingPriceSet, forKey: .totalShippingPriceSet)

            try? container.encodeIfPresent(customer, forKey: .customer)

            try? container.encodeIfPresent(totalDiscounts, forKey: .totalDiscounts)

            try? container.encodeIfPresent(totalLineItemsPriceSet, forKey: .totalLineItemsPriceSet)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(totalPriceUsd, forKey: .totalPriceUsd)

            try? container.encodeIfPresent(userId, forKey: .userId)

            try? container.encodeIfPresent(totalTax, forKey: .totalTax)

            try? container.encodeIfPresent(processingMethod, forKey: .processingMethod)

            try? container.encodeIfPresent(shippingAddress, forKey: .shippingAddress)

            try? container.encodeIfPresent(taxesIncluded, forKey: .taxesIncluded)

            try? container.encodeIfPresent(financialStatus, forKey: .financialStatus)
        }
    }
}
