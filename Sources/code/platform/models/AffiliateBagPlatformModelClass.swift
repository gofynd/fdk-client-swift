

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var itemId: Int

        public var itemSize: String

        public var avlQty: Int

        public var companyId: Int

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var hsnCodeId: String

        public var unitPrice: Double

        public var storeId: Int

        public var sku: String

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var modifiedOn: String

        public var pdfLinks: MarketPlacePdf?

        public var affiliateMeta: [String: Any]

        public var priceEffective: Double

        public var discount: Double

        public var quantity: Int

        public var identifier: [String: Any]

        public var id: String

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case itemSize = "item_size"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case sku

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case modifiedOn = "modified_on"

            case pdfLinks = "pdf_links"

            case affiliateMeta = "affiliate_meta"

            case priceEffective = "price_effective"

            case discount

            case quantity

            case identifier

            case id = "_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.itemId = itemId

            self.itemSize = itemSize

            self.avlQty = avlQty

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.sku = sku

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.modifiedOn = modifiedOn

            self.pdfLinks = pdfLinks

            self.affiliateMeta = affiliateMeta

            self.priceEffective = priceEffective

            self.discount = discount

            self.quantity = quantity

            self.identifier = identifier

            self.id = id
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            discount = try container.decode(Double.self, forKey: .discount)

            quantity = try container.decode(Int.self, forKey: .quantity)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)
        }
    }
}
