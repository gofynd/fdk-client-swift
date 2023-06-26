

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var collectedBy: String

        public var companyId: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var paymentId: String?

        public var currentStatus: String

        public var id: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var modifiedOn: String

        public var paymentMode: String

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case companyId = "company_id"

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case applicationId = "application_id"

            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case id

            case refundObject = "refund_object"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.companyId = companyId

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.applicationId = applicationId

            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.id = id

            self.refundObject = refundObject

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

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
        public var collectedBy: String

        public var companyId: String

        public var createdOn: String

        public var paymentModeIdentifier: String

        public var userObject: [String: Any]

        public var applicationId: String

        public var paymentId: String?

        public var currentStatus: String

        public var id: String

        public var refundObject: [String: Any]?

        public var currency: String

        public var aggregatorPaymentObject: [String: Any]?

        public var paymentGateway: String

        public var amountInPaisa: String

        public var allStatus: [String]

        public var modifiedOn: String

        public var paymentMode: String

        public var refundedBy: String

        public enum CodingKeys: String, CodingKey {
            case collectedBy = "collected_by"

            case companyId = "company_id"

            case createdOn = "created_on"

            case paymentModeIdentifier = "payment_mode_identifier"

            case userObject = "user_object"

            case applicationId = "application_id"

            case paymentId = "payment_id"

            case currentStatus = "current_status"

            case id

            case refundObject = "refund_object"

            case currency

            case aggregatorPaymentObject = "aggregator_payment_object"

            case paymentGateway = "payment_gateway"

            case amountInPaisa = "amount_in_paisa"

            case allStatus = "all_status"

            case modifiedOn = "modified_on"

            case paymentMode = "payment_mode"

            case refundedBy = "refunded_by"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.collectedBy = collectedBy

            self.companyId = companyId

            self.createdOn = createdOn

            self.paymentModeIdentifier = paymentModeIdentifier

            self.userObject = userObject

            self.applicationId = applicationId

            self.paymentId = paymentId

            self.currentStatus = currentStatus

            self.id = id

            self.refundObject = refundObject

            self.currency = currency

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.paymentGateway = paymentGateway

            self.amountInPaisa = amountInPaisa

            self.allStatus = allStatus

            self.modifiedOn = modifiedOn

            self.paymentMode = paymentMode

            self.refundedBy = refundedBy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            companyId = try container.decode(String.self, forKey: .companyId)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            id = try container.decode(String.self, forKey: .id)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            currency = try container.decode(String.self, forKey: .currency)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)
        }
    }
}
