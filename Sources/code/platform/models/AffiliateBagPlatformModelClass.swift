

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var storeId: Int

        public var unitPrice: Double

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var deliveryCharge: Double

        public var itemSize: String

        public var companyId: Int

        public var discount: Double

        public var priceMarked: Double

        public var quantity: Int

        public var sku: String

        public var modifiedOn: String

        public var priceEffective: Double

        public var pdfLinks: MarketPlacePdf?

        public var affiliateStoreId: String

        public var itemId: Int

        public var sellerIdentifier: String

        public var id: String

        public var fyndStoreId: String

        public var hsnCodeId: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case identifier

            case storeId = "store_id"

            case unitPrice = "unit_price"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case deliveryCharge = "delivery_charge"

            case itemSize = "item_size"

            case companyId = "company_id"

            case discount

            case priceMarked = "price_marked"

            case quantity

            case sku

            case modifiedOn = "modified_on"

            case priceEffective = "price_effective"

            case pdfLinks = "pdf_links"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case fyndStoreId = "fynd_store_id"

            case hsnCodeId = "hsn_code_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.storeId = storeId

            self.unitPrice = unitPrice

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.deliveryCharge = deliveryCharge

            self.itemSize = itemSize

            self.companyId = companyId

            self.discount = discount

            self.priceMarked = priceMarked

            self.quantity = quantity

            self.sku = sku

            self.modifiedOn = modifiedOn

            self.priceEffective = priceEffective

            self.pdfLinks = pdfLinks

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.fyndStoreId = fyndStoreId

            self.hsnCodeId = hsnCodeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            companyId = try container.decode(Int.self, forKey: .companyId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sku = try container.decode(String.self, forKey: .sku)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)
        }
    }
}
