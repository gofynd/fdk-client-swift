

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var modifiedOn: String

        public var currency: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var id: String

        public var paymentId: String?

        public var allStatus: [String]

        public var refundedBy: String

        public var createdOn: String

        public var companyId: String

        public var currentStatus: String

        public var applicationId: String

        public var paymentMode: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case currency

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case id

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.currency = currency

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.id = id

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

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

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var paymentModeIdentifier: String

        public var paymentGateway: String

        public var modifiedOn: String

        public var currency: String

        public var collectedBy: String

        public var userObject: [String: Any]

        public var amountInPaisa: String

        public var refundObject: [String: Any]?

        public var id: String

        public var paymentId: String?

        public var allStatus: [String]

        public var refundedBy: String

        public var createdOn: String

        public var companyId: String

        public var currentStatus: String

        public var applicationId: String

        public var paymentMode: String

        public var aggregatorPaymentObject: [String: Any]?

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentGateway = "payment_gateway"

            case modifiedOn = "modified_on"

            case currency

            case collectedBy = "collected_by"

            case userObject = "user_object"

            case amountInPaisa = "amount_in_paisa"

            case refundObject = "refund_object"

            case id

            case paymentId = "payment_id"

            case allStatus = "all_status"

            case refundedBy = "refunded_by"

            case createdOn = "created_on"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case applicationId = "application_id"

            case paymentMode = "payment_mode"

            case aggregatorPaymentObject = "aggregator_payment_object"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentGateway = paymentGateway

            self.modifiedOn = modifiedOn

            self.currency = currency

            self.collectedBy = collectedBy

            self.userObject = userObject

            self.amountInPaisa = amountInPaisa

            self.refundObject = refundObject

            self.id = id

            self.paymentId = paymentId

            self.allStatus = allStatus

            self.refundedBy = refundedBy

            self.createdOn = createdOn

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.applicationId = applicationId

            self.paymentMode = paymentMode

            self.aggregatorPaymentObject = aggregatorPaymentObject
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            userObject = try container.decode([String: Any].self, forKey: .userObject)

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

            allStatus = try container.decode([String].self, forKey: .allStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encode(paymentId, forKey: .paymentId)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)
        }
    }
}
