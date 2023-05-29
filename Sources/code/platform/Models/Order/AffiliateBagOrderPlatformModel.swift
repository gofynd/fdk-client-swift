

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var id: String

        public var discount: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var itemId: Int

        public var itemSize: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var amountPaid: Double

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case sku

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case discount

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.discount = discount

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var priceMarked: Double

        public var companyId: Int

        public var pdfLinks: MarketPlacePdf?

        public var storeId: Int

        public var sku: String

        public var affiliateMeta: [String: Any]

        public var sellerIdentifier: String

        public var id: String

        public var discount: Double

        public var avlQty: Int

        public var deliveryCharge: Double

        public var modifiedOn: String

        public var hsnCodeId: String

        public var fyndStoreId: String

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public var transferPrice: Int

        public var itemId: Int

        public var itemSize: String

        public var unitPrice: Double

        public var priceEffective: Double

        public var amountPaid: Double

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case priceMarked = "price_marked"

            case companyId = "company_id"

            case pdfLinks = "pdf_links"

            case storeId = "store_id"

            case sku

            case affiliateMeta = "affiliate_meta"

            case sellerIdentifier = "seller_identifier"

            case id = "_id"

            case discount

            case avlQty = "avl_qty"

            case deliveryCharge = "delivery_charge"

            case modifiedOn = "modified_on"

            case hsnCodeId = "hsn_code_id"

            case fyndStoreId = "fynd_store_id"

            case affiliateStoreId = "affiliate_store_id"

            case identifier

            case transferPrice = "transfer_price"

            case itemId = "item_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.priceMarked = priceMarked

            self.companyId = companyId

            self.pdfLinks = pdfLinks

            self.storeId = storeId

            self.sku = sku

            self.affiliateMeta = affiliateMeta

            self.sellerIdentifier = sellerIdentifier

            self.id = id

            self.discount = discount

            self.avlQty = avlQty

            self.deliveryCharge = deliveryCharge

            self.modifiedOn = modifiedOn

            self.hsnCodeId = hsnCodeId

            self.fyndStoreId = fyndStoreId

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier

            self.transferPrice = transferPrice

            self.itemId = itemId

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            companyId = try container.decode(Int.self, forKey: .companyId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            id = try container.decode(String.self, forKey: .id)

            discount = try container.decode(Double.self, forKey: .discount)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            itemId = try container.decode(Int.self, forKey: .itemId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
