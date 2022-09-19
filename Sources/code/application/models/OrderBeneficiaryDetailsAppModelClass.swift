

import Foundation
public extension ApplicationClient {
    /*
         Model: OrderBeneficiaryDetails
         Used By: Payment
     */
    class OrderBeneficiaryDetails: Codable {
        public var createdOn: String

        public var isActive: Bool

        public var comment: Bool?

        public var email: String

        public var title: String

        public var accountNo: String

        public var branchName: Bool?

        public var mobile: Bool?

        public var id: Int

        public var accountHolder: String

        public var transferMode: String

        public var subtitle: String

        public var bankName: String

        public var ifscCode: String

        public var address: String

        public var delightsUserName: String?

        public var modifiedOn: String

        public var beneficiaryId: String

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case createdOn = "created_on"

            case isActive = "is_active"

            case comment

            case email

            case title

            case accountNo = "account_no"

            case branchName = "branch_name"

            case mobile

            case id

            case accountHolder = "account_holder"

            case transferMode = "transfer_mode"

            case subtitle

            case bankName = "bank_name"

            case ifscCode = "ifsc_code"

            case address

            case delightsUserName = "delights_user_name"

            case modifiedOn = "modified_on"

            case beneficiaryId = "beneficiary_id"

            case displayName = "display_name"
        }

        public init(accountHolder: String, accountNo: String, address: String, bankName: String, beneficiaryId: String, branchName: Bool? = nil, comment: Bool? = nil, createdOn: String, delightsUserName: String? = nil, displayName: String, email: String, id: Int, ifscCode: String, isActive: Bool, mobile: Bool? = nil, modifiedOn: String, subtitle: String, title: String, transferMode: String) {
            self.createdOn = createdOn

            self.isActive = isActive

            self.comment = comment

            self.email = email

            self.title = title

            self.accountNo = accountNo

            self.branchName = branchName

            self.mobile = mobile

            self.id = id

            self.accountHolder = accountHolder

            self.transferMode = transferMode

            self.subtitle = subtitle

            self.bankName = bankName

            self.ifscCode = ifscCode

            self.address = address

            self.delightsUserName = delightsUserName

            self.modifiedOn = modifiedOn

            self.beneficiaryId = beneficiaryId

            self.displayName = displayName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdOn = try container.decode(String.self, forKey: .createdOn)

            isActive = try container.decode(Bool.self, forKey: .isActive)

            do {
                comment = try container.decode(Bool.self, forKey: .comment)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            title = try container.decode(String.self, forKey: .title)

            accountNo = try container.decode(String.self, forKey: .accountNo)

            do {
                branchName = try container.decode(Bool.self, forKey: .branchName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(Bool.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(Int.self, forKey: .id)

            accountHolder = try container.decode(String.self, forKey: .accountHolder)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            subtitle = try container.decode(String.self, forKey: .subtitle)

            bankName = try container.decode(String.self, forKey: .bankName)

            ifscCode = try container.decode(String.self, forKey: .ifscCode)

            address = try container.decode(String.self, forKey: .address)

            do {
                delightsUserName = try container.decode(String.self, forKey: .delightsUserName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            beneficiaryId = try container.decode(String.self, forKey: .beneficiaryId)

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdOn, forKey: .createdOn)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(comment, forKey: .comment)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(accountNo, forKey: .accountNo)

            try? container.encodeIfPresent(branchName, forKey: .branchName)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(accountHolder, forKey: .accountHolder)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(subtitle, forKey: .subtitle)

            try? container.encodeIfPresent(bankName, forKey: .bankName)

            try? container.encodeIfPresent(ifscCode, forKey: .ifscCode)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encode(delightsUserName, forKey: .delightsUserName)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(beneficiaryId, forKey: .beneficiaryId)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
