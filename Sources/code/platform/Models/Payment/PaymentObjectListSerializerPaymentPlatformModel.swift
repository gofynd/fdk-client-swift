

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var collectedBy: String

        public var modifiedOn: String

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var id: String

        public var allStatus: [String]

        public var paymentMode: String

        public var amountInPaisa: String

        public var applicationId: String

        public var companyId: String

        public var currentStatus: String

        public var refundedBy: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case id

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case refundedBy = "refunded_by"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.refundObject = refundObject

            self.id = id

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.refundedBy = refundedBy

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: PaymentObjectListSerializer
         Used By: Payment
     */

    class PaymentObjectListSerializer: Codable {
        public var currency: String

        public var collectedBy: String

        public var modifiedOn: String

        public var paymentGateway: String

        public var paymentModeIdentifier: String

        public var createdOn: String

        public var aggregatorPaymentObject: [String: Any]?

        public var userObject: [String: Any]

        public var refundObject: [String: Any]?

        public var id: String

        public var allStatus: [String]

        public var paymentMode: String

        public var amountInPaisa: String

        public var applicationId: String

        public var companyId: String

        public var currentStatus: String

        public var refundedBy: String

        public var paymentId: String?

        public enum CodingKeys: String, CodingKey {
            case currency

            case collectedBy = "collected_by"

            case modifiedOn = "modified_on"

            case paymentGateway = "payment_gateway"

            case paymentModeIdentifier = "payment_mode_identifier"

            case createdOn = "created_on"

            case aggregatorPaymentObject = "aggregator_payment_object"

            case userObject = "user_object"

            case refundObject = "refund_object"

            case id

            case allStatus = "all_status"

            case paymentMode = "payment_mode"

            case amountInPaisa = "amount_in_paisa"

            case applicationId = "application_id"

            case companyId = "company_id"

            case currentStatus = "current_status"

            case refundedBy = "refunded_by"

            case paymentId = "payment_id"
        }

        public init(aggregatorPaymentObject: [String: Any]? = nil, allStatus: [String], amountInPaisa: String, applicationId: String, collectedBy: String, companyId: String, createdOn: String, currency: String, currentStatus: String, id: String, modifiedOn: String, paymentGateway: String, paymentId: String? = nil, paymentMode: String, paymentModeIdentifier: String, refundedBy: String, refundObject: [String: Any]? = nil, userObject: [String: Any]) {
            self.currency = currency

            self.collectedBy = collectedBy

            self.modifiedOn = modifiedOn

            self.paymentGateway = paymentGateway

            self.paymentModeIdentifier = paymentModeIdentifier

            self.createdOn = createdOn

            self.aggregatorPaymentObject = aggregatorPaymentObject

            self.userObject = userObject

            self.refundObject = refundObject

            self.id = id

            self.allStatus = allStatus

            self.paymentMode = paymentMode

            self.amountInPaisa = amountInPaisa

            self.applicationId = applicationId

            self.companyId = companyId

            self.currentStatus = currentStatus

            self.refundedBy = refundedBy

            self.paymentId = paymentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            currency = try container.decode(String.self, forKey: .currency)

            collectedBy = try container.decode(String.self, forKey: .collectedBy)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            paymentGateway = try container.decode(String.self, forKey: .paymentGateway)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            do {
                aggregatorPaymentObject = try container.decode([String: Any].self, forKey: .aggregatorPaymentObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            userObject = try container.decode([String: Any].self, forKey: .userObject)

            do {
                refundObject = try container.decode([String: Any].self, forKey: .refundObject)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            allStatus = try container.decode([String].self, forKey: .allStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amountInPaisa = try container.decode(String.self, forKey: .amountInPaisa)

            applicationId = try container.decode(String.self, forKey: .applicationId)

            companyId = try container.decode(String.self, forKey: .companyId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            refundedBy = try container.decode(String.self, forKey: .refundedBy)

            do {
                paymentId = try container.decode(String.self, forKey: .paymentId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(currency, forKey: .currency)

            try? container.encodeIfPresent(collectedBy, forKey: .collectedBy)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(paymentGateway, forKey: .paymentGateway)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encode(aggregatorPaymentObject, forKey: .aggregatorPaymentObject)

            try? container.encodeIfPresent(userObject, forKey: .userObject)

            try? container.encode(refundObject, forKey: .refundObject)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(allStatus, forKey: .allStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amountInPaisa, forKey: .amountInPaisa)

            try? container.encodeIfPresent(applicationId, forKey: .applicationId)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(refundedBy, forKey: .refundedBy)

            try? container.encode(paymentId, forKey: .paymentId)
        }
    }
}
