

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var avlQty: Int

        public var unitPrice: Double

        public var priceEffective: Double

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var sellerIdentifier: String

        public var id: String

        public var priceMarked: Double

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var sku: String

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case identifier

            case discount

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case sku

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var transferPrice: Int

        public var avlQty: Int

        public var unitPrice: Double

        public var priceEffective: Double

        public var itemSize: String

        public var affiliateMeta: [String: Any]

        public var modifiedOn: String

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var companyId: Int

        public var sellerIdentifier: String

        public var id: String

        public var priceMarked: Double

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var sku: String

        public var hsnCodeId: String

        public var quantity: Int

        public var storeId: Int

        public enum CodingKeys: String, CodingKey {
            case transferPrice = "transfer_price"

            case avlQty = "avl_qty"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case itemSize = "item_size"

            case affiliateMeta = "affiliate_meta"

            case modifiedOn = "modified_on"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case identifier

            case discount

            case pdfLinks = "pdf_links"

            case companyId = "company_id"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case sku

            case hsnCodeId = "hsn_code_id"

            case quantity

            case storeId = "store_id"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.transferPrice = transferPrice

            self.avlQty = avlQty

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.itemSize = itemSize

            self.affiliateMeta = affiliateMeta

            self.modifiedOn = modifiedOn

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.companyId = companyId

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.sku = sku

            self.hsnCodeId = hsnCodeId

            self.quantity = quantity

            self.storeId = storeId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            companyId = try container.decode(Int.self, forKey: .companyId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            sku = try container.decode(String.self, forKey: .sku)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)
        }
    }
}
