

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var id: String

        public var paymentId: String?

        public var currency: String

        public var createdOn: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var collectedBy: String

        public var paymentMode: String

        public var currentStatus: String

        public var companyId: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case id

            case paymentId = "payment_id"

            case currency

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.id = id

            self.paymentId = paymentId

            self.currency = currency

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var id: String

        public var paymentId: String?

        public var currency: String

        public var createdOn: String

        public var modifiedOn: String

        public var allStatus: [String]

        public var collectedBy: String

        public var paymentMode: String

        public var currentStatus: String

        public var companyId: String

        public var applicationId: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var paymentGateway: String

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case id

            case paymentId = "payment_id"

            case currency

            case createdOn = "created_on"

            case modifiedOn = "modified_on"

            case allStatus = "all_status"

            case collectedBy = "collected_by"

            case paymentMode = "payment_mode"

            case currentStatus = "current_status"

            case companyId = "company_id"

            case applicationId = "application_id"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case paymentGateway = "payment_gateway"

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.id = id

            self.paymentId = paymentId

            self.currency = currency

            self.createdOn = createdOn

            self.modifiedOn = modifiedOn

            self.allStatus = allStatus

            self.collectedBy = collectedBy

            self.paymentMode = paymentMode

            self.currentStatus = currentStatus

            self.companyId = companyId

            self.applicationId = applicationId

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.paymentGateway = paymentGateway

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            companyId = try container.decode(String.self, forKey: .companyId)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}
