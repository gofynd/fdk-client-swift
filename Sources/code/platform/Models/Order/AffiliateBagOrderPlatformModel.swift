

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var itemSize: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var avlQty: Int

        public var storeId: Int

        public var sku: String

        public var identifier: [String: Any]

        public var id: String

        public var affiliateStoreId: String

        public var discount: Double

        public var priceEffective: Double

        public var priceMarked: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var unitPrice: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case sku

            case identifier

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.storeId = storeId

            self.sku = sku

            self.identifier = identifier

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var itemId: Int

        public var itemSize: String

        public var sellerIdentifier: String

        public var quantity: Int

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var avlQty: Int

        public var storeId: Int

        public var sku: String

        public var identifier: [String: Any]

        public var id: String

        public var affiliateStoreId: String

        public var discount: Double

        public var priceEffective: Double

        public var priceMarked: Double

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var unitPrice: Double

        public var transferPrice: Int

        public var amountPaid: Double

        public var hsnCodeId: String

        public var affiliateMeta: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case itemId = "item_id"

            case itemSize = "item_size"

            case sellerIdentifier = "seller_identifier"

            case quantity

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case storeId = "store_id"

            case sku

            case identifier

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case priceEffective = "price_effective"

            case priceMarked = "price_marked"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case affiliateMeta = "affiliate_meta"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.itemId = itemId

            self.itemSize = itemSize

            self.sellerIdentifier = sellerIdentifier

            self.quantity = quantity

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.storeId = storeId

            self.sku = sku

            self.identifier = identifier

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.priceEffective = priceEffective

            self.priceMarked = priceMarked

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.affiliateMeta = affiliateMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            quantity = try container.decode(Int.self, forKey: .quantity)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)
        }
    }
}
