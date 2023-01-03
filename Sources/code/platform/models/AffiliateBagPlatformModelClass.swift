

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var amountPaid: Double

        public var priceMarked: Double

        public var transferPrice: Int

        public var priceEffective: Double

        public var quantity: Int

        public var fyndStoreId: String

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var itemId: Int

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var sku: String

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var itemSize: String

        public var discount: Double

        public var avlQty: Int

        public var id: String

        public var sellerIdentifier: String

        public var unitPrice: Double

        public var deliveryCharge: Double

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case amountPaid = "amount_paid"

            case priceMarked = "price_marked"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case quantity

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"

            case identifier

            case itemId = "item_id"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case sku

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case itemSize = "item_size"

            case discount

            case avlQty = "avl_qty"

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case unitPrice = "unit_price"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.amountPaid = amountPaid

            self.priceMarked = priceMarked

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.itemId = itemId

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.itemSize = itemSize

            self.discount = discount

            self.avlQty = avlQty

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.unitPrice = unitPrice

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
